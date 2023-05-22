# Flutter Jokenpo


A mobile application developed in Flutter that implements the game Jokenpo, also known as "Rock, Paper, Scissors" as part of the 1st evaluation for the course "Programming IV (mobile)" at Universidade Estadual do Piauí (UESPI), under the guidance of Professor Eyder Rios.

The project was implemented to solve the following problem using the Flutter framework. The submitted project will be evaluated based on the following criteria:
- 40% Correctness: Whether the application performs the requested tasks according to the specifications.
- 20% Organization: Whether the source code is well-organized and components are segmented into files.
- 40% Interface: Whether the user interface is well-presented and functional.


In Jokenpo, players must simultaneously make a hand gesture, each forming a symbol representing either rock, paper, or scissors. Then, the players compare the symbols to determine the winner according to the following rules:
- Rock wins against scissors.
- Scissors win against paper.
- Paper wins against rock.

The rock is symbolized by a closed fist, scissors by two extended fingers, and paper by an open hand, as shown in the illustration.

If two players make the same gesture, it results in a tie, and usually the game is replayed until a winner is determined. It is not allowed to show the same gesture twice in a row.

The developed application should adhere to the following requirements:
1. The user will play against the computer.
2. The computer's selected option should be displayed on the screen (initially hidden), along with the three options available for the user to choose from.
3. After the user's selection, the computer's option should be revealed, and the result of the match should be displayed, as suggested by the image.
4. The screen should keep track of the number of games won by the system and the user.
5. There should be an option to restart the game.

## Installation

1. Clone the repository: `git clone https://github.com/ed-morais/flutter_jokenpo.git`
2. Navigate to the project directory: `cd flutter_jokenpo`
3. Install the dependencies: `flutter pub get`

## Usage

1. Make sure you have Flutter set up on your local machine.
2. Run the application: `flutter run`

## Contributors

- [Edilson Morais Brito](https://github.com/ed-morais)
- [Tiago Silva Carvalho](https://github.com/TSCTiago)
- [Francisco Mendes Magalhães Filho](https://github.com/FranciscoMends)


## Contributing

Contributions are welcome! If you have any ideas, suggestions, or find any issues, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
