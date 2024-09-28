const board = document.getElementById("board");
const cells = document.querySelectorAll(".cell");
const message = document.getElementById("message");
const difficultyButtons = document.querySelectorAll(".difficulty-button");
const winsElement = document.getElementById("wins");
const lossesElement = document.getElementById("losses");
let currentPlayer = "X";
let gameActive = true;
let botPlayer = "O";
let botDifficulty = 1;
let wins = 0;
let losses = 0;

const winningCombinations = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
];

board.addEventListener("click", (event) => {
  if (!gameActive) return;
  if (event.target.classList.contains("cell") && !event.target.textContent) {
    event.target.textContent = currentPlayer;
    event.target.classList.add(currentPlayer);
    console.log(`Player ${currentPlayer} played`);
    checkWinner();
    if (currentPlayer === "X") {
      currentPlayer = "O";
      setTimeout(() => botMove(), 100);
    } else {
      currentPlayer = "X";
    }
  }
});

function checkWinner() {
  const cellValues = Array.from(cells).map((cell) => cell.textContent);

  for (let combination of winningCombinations) {
    const [a, b, c] = combination;
    if (
      cellValues[a] &&
      cellValues[a] === cellValues[b] &&
      cellValues[a] === cellValues[c]
    ) {
      gameActive = false;
      if (cellValues[a] === "X") {
        message.textContent = "¡El humano ha ganado!";
        console.log("El humano ha ganado");
        wins++;
        winsElement.textContent = wins;
      } else {
        message.textContent = "¡El bot ha ganado!";
        console.log("El bot ha ganado");
        losses++;
        lossesElement.textContent = losses;
      }
      return;
    }
  }

  if (cellValues.every((cell) => cell)) {
    gameActive = false;
    message.textContent = "¡Es un empate!";
    console.log("Empate");
  }
}

function botMove() {
  if (!gameActive) return;

  let move;
  if (botDifficulty === 1) {
    move = getRandomMove();
  } else if (botDifficulty === 2) {
    move = getMediumMove();
  } else if (botDifficulty === 3) {
    move = getMediumMove();
  } else if (botDifficulty === 4) {
    move = getAdvancedMove();
  } else if (botDifficulty === 5) {
    move = getHardMove();
  }

  if (move !== undefined) {
    cells[move].textContent = botPlayer;
    cells[move].classList.add(botPlayer);
    console.log(`Bot ${botPlayer} played at position ${move}`);
    checkWinner();
    currentPlayer = "X";
  }
}

function getRandomMove() {
  const emptyCells = Array.from(cells).filter((cell) => !cell.textContent);
  const randomCell = emptyCells[Math.floor(Math.random() * emptyCells.length)];
  return Array.from(cells).indexOf(randomCell);
}

function getMediumMove() {
  const cellValues = Array.from(cells).map((cell) => cell.textContent);
  for (let combination of winningCombinations) {
    const [a, b, c] = combination;
    if (
      cellValues[a] === botPlayer &&
      cellValues[b] === botPlayer &&
      !cellValues[c]
    ) {
      return c;
    }
    if (
      cellValues[b] === botPlayer &&
      cellValues[c] === botPlayer &&
      !cellValues[a]
    ) {
      return a;
    }
    if (
      cellValues[a] === botPlayer &&
      cellValues[c] === botPlayer &&
      !cellValues[b]
    ) {
      return b;
    }
  }
  for (let combination of winningCombinations) {
    const [a, b, c] = combination;
    if (cellValues[a] === "X" && cellValues[b] === "X" && !cellValues[c]) {
      return c;
    }
    if (cellValues[b] === "X" && cellValues[c] === "X" && !cellValues[a]) {
      return a;
    }
    if (cellValues[a] === "X" && cellValues[c] === "X" && !cellValues[b]) {
      return b;
    }
  }
  return getRandomMove();
}

function getAdvancedMove() {
  return minimax(
    Array.from(cells).map((cell) => cell.textContent),
    botPlayer
  ).index;
}

function getHardMove() {
  return getAdvancedMove();
}

function minimax(board, player) {
  const availableSpots = board
    .map((value, index) => (!value ? index : null))
    .filter((index) => index !== null);
  if (checkWin(board, "X")) return { score: -10 };
  if (checkWin(board, "O")) return { score: 10 };
  if (availableSpots.length === 0) return { score: 0 };

  const moves = [];
  for (let spot of availableSpots) {
    const newBoard = board.slice();
    newBoard[spot] = player;
    const result = minimax(newBoard, player === "O" ? "X" : "O");
    moves.push({ index: spot, score: result.score });
  }

  let bestMove;
  if (player === "O") {
    let bestScore = -Infinity;
    for (let move of moves) {
      if (move.score > bestScore) {
        bestScore = move.score;
        bestMove = move;
      }
    }
  } else {
    let bestScore = Infinity;
    for (let move of moves) {
      if (move.score < bestScore) {
        bestScore = move.score;
        bestMove = move;
      }
    }
  }
  return bestMove;
}

function checkWin(board, player) {
  for (let combination of winningCombinations) {
    const [a, b, c] = combination;
    if (board[a] === player && board[a] === board[b] && board[a] === board[c]) {
      return true;
    }
  }
  return false;
}

document.getElementById("reset").addEventListener("click", () => {
  cells.forEach((cell) => {
    cell.textContent = "";
    cell.classList.remove("X", "O");
  });
  message.textContent = "";
  currentPlayer = "X";
  gameActive = true;
});

difficultyButtons.forEach((button) => {
  button.addEventListener("click", () => {
    difficultyButtons.forEach((btn) => btn.classList.remove("selected"));
    button.classList.add("selected");
    botDifficulty = parseInt(button.dataset.difficulty);
  });
});
