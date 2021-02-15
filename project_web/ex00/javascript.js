// ==================== CONSTANTS ==================== //
const STATUS_DISPLAY = document.querySelector('.game-notification'),
	GAME_STATE = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""],
	WINNINGS = [
	[0, 1, 2, 3, 4],
	[5, 6, 7, 8, 9],
	[10, 11, 12, 13, 14],
	[15, 16, 17, 18, 19],
	[20, 21, 22, 23, 24],
	[0, 6, 12, 18, 24],
	[4, 8, 12, 16, 20],
	[0,5,10,15,20],
	[1,6,11,16,21],
	[2, 7, 12, 17, 22],
	[3, 8, 13, 18, 23]
	[4, 9, 14, 19, 24]
	],
	WIN_MESSAGE = () => `El jugador ${currentPlayer} ha ganado!`,
	DRAW_MESSAGE = () => `El juego ha terminado en empate!`,
	CURRENT_PLAYER_TURN = () => `Turno del jugador ${currentPlayer}`
// ==================== VARIABLES ==================== //
let gameActive = true,
	currentPlayer = "O"
// ==================== FUNCTIONS ==================== //
function main() {
	handleStatusDisplay(CURRENT_PLAYER_TURN())
	listeners()
}
function listeners() {
	document.querySelector('.game-container').addEventListener('click', handleCellClick)
	document.querySelector('.game-restart').addEventListener('click', handleRestartGame)
}
function handleStatusDisplay(message) {
	STATUS_DISPLAY.innerHTML = message
}
function handleRestartGame() {
	gameActive = true
	currentPlayer = "X"
	restartGameState()
	handleStatusDisplay(CURRENT_PLAYER_TURN())
	document.querySelectorAll('.cell').forEach(cell => cell.innerHTML = "")
}
function handleCellClick(clickedCellEvent /** Type Event **/) {
	const clickedCell = clickedCellEvent.target
	if (clickedCell.classList.contains('cell')) {
	const clickedCellIndex = Array.from(clickedCell.parentNode.children).indexOf(clickedCell)
	if (GAME_STATE[clickedCellIndex] !== '' || !gameActive) {
	return false
	}
	handleCellPlayed(clickedCell, clickedCellIndex)
	handleResultValidation()
	}
}
function handleCellPlayed(clickedCell /** object HTML **/, clickedCellIndex) {
	GAME_STATE[clickedCellIndex] = currentPlayer // Agrega en la posición correspondiente el valor ya sea "X" u "O" en el estado actual del juego
	clickedCell.innerHTML = currentPlayer // Agrega en el HTML el valor del jugador
}
function handleResultValidation() {
	handlePlayerChange()
	let roundWon = false
	for (let i = 0; i < WINNINGS.length; i++) { // Itera cada uno de las posibles combinaciones ganadores
	const winCondition = WINNINGS[i] // Guarda la combinación por ejemplo: [0, 1, 2]
	let position1 = GAME_STATE[winCondition[0]],
	position2 = GAME_STATE[winCondition[1]],
	position3 = GAME_STATE[winCondition[2]],
	position4 = GAME_STATE[winCondition[3]],
	position5 = GAME_STATE[winCondition[4]] // Almacena el valor del estado actual del juego según las posiciones de winCondition
	if (position1 === '' || position2 === '' || position3 === '' || position4 === '' || position5 === '') {
	continue; // Si hay algún valor vacio nadie ha ganado aún
	}
	if (position1 === position2 && position2 === position3 && position3 === position4 && position4 === position5) {
	roundWon = true // Si todas las posiciones coinciden entonces, dicho jugador ha ganado la partida
	break
	}
	}
	if (roundWon) {
	handlePlayerChange()
	handleStatusDisplay(WIN_MESSAGE())
	gameActive = false
	return
	}
	let roundDraw = !GAME_STATE.includes("") // Si todas las celdas tienen valor y la sentencia anterior fue falsa entonces es empate
	if (roundDraw) {
	handleStatusDisplay(DRAW_MESSAGE())
	gameActive = false
	return
	}
}
function handlePlayerChange() {
	currentPlayer = currentPlayer === "X" ? "O" : "X"
	handleStatusDisplay(CURRENT_PLAYER_TURN())
}
function restartGameState() {
	let i = GAME_STATE.length
	while (i--) {
	GAME_STATE[i] = ''
	}
}
main()