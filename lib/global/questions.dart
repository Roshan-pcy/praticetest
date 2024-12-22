import 'package:praticetest/model/model.dart';

List<Question> questions = [
  // Existing questions

  // New Driving Practice Questions for the USA
  Question(
    question:
        "What is the legal blood alcohol concentration (BAC) limit for drivers over 21 in the USA?",
    options: ['0.05%', '0.08%', '0.10%'],
    answer: 1, // '0.08%'
  ),
  Question(
    question: "What should you do at a red traffic light?",
    options: ['Stop', 'Slow down', 'Proceed if no one is coming'],
    answer: 0, // 'Stop'
  ),
  Question(
    question:
        "When are you allowed to turn right at a red light in most states?",
    options: [
      'Always',
      'After a complete stop and checking for traffic',
      'Never'
    ],
    answer: 1, // 'After a complete stop and checking for traffic'
  ),
  Question(
    question: "What is the speed limit in most residential areas?",
    options: ['25 mph', '35 mph', '45 mph'],
    answer: 0, // '25 mph'
  ),
  Question(
    question: "What does a yellow traffic light indicate?",
    options: ['Speed up', 'Stop if safe', 'Go'],
    answer: 1, // 'Stop if safe'
  ),
  Question(
    question: "Who has the right of way at a four-way stop?",
    options: [
      'The first vehicle to stop',
      'The vehicle on the left',
      'The vehicle on the right'
    ],
    answer: 0, // 'The first vehicle to stop'
  ),
  Question(
    question: "What does a flashing red traffic light mean?",
    options: ['Stop and yield to traffic', 'Proceed with caution', 'Speed up'],
    answer: 0, // 'Stop and yield to traffic'
  ),
  Question(
    question: "What is the recommended hand position on the steering wheel?",
    options: ['9 and 3', '10 and 2', '12 and 6'],
    answer: 0, // '9 and 3'
  ),
  Question(
    question: "When should you use your turn signals?",
    options: [
      'Only when turning right',
      'Only when turning left',
      'When turning or changing lanes'
    ],
    answer: 2, // 'When turning or changing lanes'
  ),
  Question(
    question: "What should you do if you miss your exit on the highway?",
    options: ['Back up to the exit', 'Take the next exit', 'Make a U-turn'],
    answer: 1, // 'Take the next exit'
  ),
  Question(
    question: "What does a solid yellow line on your side of the road mean?",
    options: ['You may pass', 'You may not pass', 'Slow down'],
    answer: 1, // 'You may not pass'
  ),
  Question(
    question:
        "How far should you stop from a railroad crossing when a train is approaching?",
    options: ['10 feet', '15 feet', '25 feet'],
    answer: 1, // '15 feet'
  ),
  Question(
    question: "What does a broken white line mean on the road?",
    options: ['No passing', 'Passing is allowed', 'Stop'],
    answer: 1, // 'Passing is allowed'
  ),
  Question(
    question: "When must headlights be used?",
    options: [
      'At all times',
      'Between dusk and dawn or in low visibility',
      'Only at night'
    ],
    answer: 1, // 'Between dusk and dawn or in low visibility'
  ),
  Question(
    question: "What does a flashing yellow light indicate?",
    options: ['Stop', 'Proceed with caution', 'Speed up'],
    answer: 1, // 'Proceed with caution'
  ),
  Question(
    question: "How far ahead should you look when driving in the city?",
    options: ['2 seconds', '5 seconds', '12 seconds'],
    answer: 2, // '12 seconds'
  ),
  Question(
    question: "What should you do if your vehicle starts to skid?",
    options: [
      'Slam on the brakes',
      'Turn into the skid',
      'Turn away from the skid'
    ],
    answer: 1, // 'Turn into the skid'
  ),
  Question(
    question: "What is the purpose of the two-second rule?",
    options: [
      'To time how long your trip will take',
      'To maintain a safe following distance',
      'To reduce speed in poor weather conditions'
    ],
    answer: 1, // 'To maintain a safe following distance'
  ),
  Question(
    question: "When parking downhill, you should:",
    options: [
      'Turn the wheels toward the curb',
      'Turn the wheels away from the curb',
      'Leave the wheels straight'
    ],
    answer: 0, // 'Turn the wheels toward the curb'
  ),
  Question(
    question: "What is the penalty for not wearing a seatbelt in most states?",
    options: ['No penalty', 'A fine', 'License suspension'],
    answer: 1, // 'A fine'
  ),
  Question(
    question: "What does a pedestrian crossing sign look like?",
    options: ['A red triangle', 'A yellow diamond', 'A blue square'],
    answer: 1, // 'A yellow diamond'
  ),
  Question(
    question: "What is the safe following distance on a dry road?",
    options: ['1 second', '2-3 seconds', '5-6 seconds'],
    answer: 1, // '2-3 seconds'
  ),
  Question(
    question: "When driving in fog, what lights should you use?",
    options: ['High beams', 'Low beams', 'No lights'],
    answer: 1, // 'Low beams'
  ),
  Question(
    question:
        "What is the first thing you should do when you see emergency vehicles with flashing lights?",
    options: [
      'Speed up to get out of the way',
      'Pull over to the right and stop',
      'Continue driving'
    ],
    answer: 1, // 'Pull over to the right and stop'
  ),
  Question(
    question: "When should you yield to pedestrians?",
    options: [
      'Only at crosswalks',
      'Always',
      'Only when the pedestrian has a walk signal'
    ],
    answer: 1, // 'Always'
  ),
  Question(
    question: "What does a 'No Passing Zone' sign look like?",
    options: ['A yellow pennant', 'A red octagon', 'A blue rectangle'],
    answer: 0, // 'A yellow pennant'
  ),
  Question(
    question:
        "What is the meaning of a double solid yellow line in the center of the road?",
    options: [
      'No passing allowed in either direction',
      'Passing allowed only on one side',
      'Passing allowed on both sides'
    ],
    answer: 0, // 'No passing allowed in either direction'
  ),
  Question(
    question: "What does a diamond-shaped sign indicate?",
    options: ['Speed limit', 'Warning', 'Regulatory'],
    answer: 1, // 'Warning'
  ),
  Question(
    question:
        "What should you do if you are involved in a minor traffic accident with no injuries?",
    options: [
      'Leave the scene',
      'Move vehicles out of traffic, if possible, and exchange information',
      'Wait for police without moving vehicles'
    ],
    answer:
        1, // 'Move vehicles out of traffic, if possible, and exchange information'
  ),
  Question(
    question:
        "What is the maximum legal speed limit on most highways in the USA?",
    options: ['55 mph', '65 mph', '70 mph'],
    answer: 2, // '70 mph'
  ),
  Question(
    question: "When is it illegal to cross railroad tracks?",
    options: [
      'When the lights are flashing',
      'If the gate is down',
      'Both a and b'
    ],
    answer: 2, // 'Both a and b'
  ),
  Question(
    question:
        "What should you do if you see a school bus with flashing red lights?",
    options: [
      'Proceed with caution',
      'Stop completely until the lights stop flashing',
      'Pass the bus if no children are visible'
    ],
    answer: 1, // 'Stop completely until the lights stop flashing'
  ),
  Question(
    question: "What should you do if your tire blows out while driving?",
    options: [
      'Brake hard and steer to the shoulder',
      'Grip the wheel firmly and ease off the gas',
      'Accelerate to maintain control'
    ],
    answer: 1, // 'Grip the wheel firmly and ease off the gas'
  ),
  Question(
    question: "What is the meaning of a red curb in most states?",
    options: [
      'No stopping, standing, or parking',
      'Loading zone only',
      'Parking allowed for a limited time'
    ],
    answer: 0, // 'No stopping, standing, or parking'
  ),
  Question(
    question: "What is the consequence of running a red light in most states?",
    options: [
      'A warning',
      'A fine or traffic violation',
      'A license suspension'
    ],
    answer: 1, // 'A fine or traffic violation'
  ),
  Question(
    question: "What does it mean if you see a triangular red and white sign?",
    options: ['Yield to other vehicles', 'Stop', 'Do not enter'],
    answer: 0, // 'Yield to other vehicles'
  ),
  Question(
    question: "What should you do when approaching a construction zone?",
    options: [
      'Increase your speed',
      'Decrease your speed and follow the signs',
      'Ignore the signs'
    ],
    answer: 1, // 'Decrease your speed and follow the signs'
  ),
  Question(
    question: "When should you use your hazard lights?",
    options: [
      'When parked illegally',
      'When your vehicle is broken down or in an emergency',
      'When driving in heavy rain'
    ],
    answer: 1, // 'When your vehicle is broken down or in an emergency'
  ),
  Question(
    question: "What does a yield sign mean?",
    options: [
      'Proceed without stopping',
      'Stop completely',
      'Give way to other traffic'
    ],
    answer: 2, // 'Give way to other traffic'
  ),
  Question(
    question: "When should you turn on your headlights?",
    options: [
      'When visibility is poor or at night',
      'During clear daytime conditions',
      'When driving in the city'
    ],
    answer: 0, // 'When visibility is poor or at night'
  ),
  Question(
    question:
        "How far ahead should you signal before turning or changing lanes?",
    options: ['50 feet', '100 feet', '150 feet'],
    answer: 1, // '100 feet'
  ),
  Question(
    question:
        "What is the minimum safe distance for following another vehicle in ideal driving conditions?",
    options: ['1 second', '3 seconds', '5 seconds'],
    answer: 1, // '3 seconds'
  ),
  // Continue adding more questions as needed
];
