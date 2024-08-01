import 'package:practice/app/Question_Model.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "What country has the highest life expectancy? Hong Kong",
    {
      "55.13": false,
      "72.14": false,
      "93.18": false,
      "85.16": true,
    },
  ),
  QuestionModel(
      "Where would you be if you were standing on the Spanish Steps? Rome", {
    "Pinco Hills": false,
    "Knoll": false,
    "tors": false,
    "Kuppes": true,
  }),
  QuestionModel(
      "Which language has the more native speakers: English or Spanish? Spanish",
      {
        "Mandarin Chinese": true,
        "Spanish": false,
        "English": false,
        "Hindi": false,
      }),
  QuestionModel("How many moons does Mars have ?", {
    "1": false,
    "2": true,
    "4": false,
    "8": false,
  }),
  QuestionModel("What is the most common surname in the United States? Smith", {
    "The red planet": true,
    "The dusty planet": false,
    "The hot planet": false,
    "The smelly planet": false,
  }),
  QuestionModel("What disease commonly spread on pirate ships?", {
    "Plasm": false,
    "RBC": false,
    " WBC": false,
    "Scurvy": true,
  }),
  QuestionModel("Who was the Ancient Greek God of the Sun? Apollo", {
    "mythology": false,
    "Zeus": false,
    "titan Helios": false,
    "Scurvy": true,
  }),
  QuestionModel(
      "What was the name of the crime boss who was head of the feared Chicago Outfit? Al Capone",
      {
        "Secon": false,
        "Third": false,
        "Fourth": true,
        "Sixth": false,
      }),
  QuestionModel(
      "Where did Orville and Wilbur Wright build their first flying airplane ?",
      {
        "Paris, France": false,
        "Boston, Massachusetts": false,
        "Kitty Hawk, North Carolina": true,
        "Tokyou, Japan": false,
      }),
  QuestionModel("Who has won the most total Academy Awards? Walt Disney", {
    "26": true,
    "25": false,
    "29": false,
    "21": false,
  }),
];
