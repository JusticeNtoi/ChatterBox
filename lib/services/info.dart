const info = [
  {
    'name': 'Alice',
    'message': 'Hey, hows it going?',
    'time': '10:30 am',
    'profilePic':
    'https://images.unsplash.com/photo-1710587384959-3541e5e27999?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8',
  },
  {
    'name': 'Bob',
    'message': 'Meeting at 2 PM, dont forget!',
    'time': '12:15 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
  },
  {
    'name': 'Claire',
    'message': 'Just finished the presentation, it went well!',
    'time': '3:45 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1579783483458-83d02161294e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
  },
  {
    'name': 'David',
    'message': 'Are we still on for dinner tonight?',
    'time': '5:20 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1466112928291-0903b80a9466?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
  },
  {
    'name': 'Emily',
    'message': 'Happy birthday! 🎉',
    'time': '8:00 am',
    'profilePic':
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
  },
  {
    'name': 'Frank',
    'message': 'Can you pick up some groceries on your way home?',
    'time': '4:30 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1497316730643-415fac54a2af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
  },
  {
    'name': 'Grace',
    'message': 'Just saw a movie, it was great!',
    'time': '7:10 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
  },
  {
    'name': 'Henry',
    'message': 'Lets plan a trip for next month!',
    'time': '2:45 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1455274111113-575d080ce8cd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
  },
  {
    'name': 'Isabelle',
    'message': 'Did you see the new episode? Its amazing!',
    'time': '9:25 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
  },
  {
    'name': 'Jack',
    'message': 'Running a bit late, be there in 15 minutes.',
    'time': '6:50 pm',
    'profilePic':
    'https://images.unsplash.com/photo-1522196772883-393d879eb14d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D',
  },
];

const messages = [
  {"isMe": true, "text": "Hey Bob, how about we go out for a photoshoot this weekend?", "time": "10:00 am"},
  {"isMe": false, "text": "Sounds like a plan! Where are you thinking of going?", "time": "11:00 am"},
  {"isMe": true, "text": "I found this great park with amazing scenery. It's perfect for some nature shots.", "time": "11:01 am"},
  {
    "isMe": false,
    "text": "That sounds awesome! What time should we meet?",
    "time": "11:01 am"
  },
  {"isMe": true, "text": "How about 10 AM? That way we can catch the morning light.", "time": "11:03 am"},
  {
    "isMe": false,
    "text": "Works for me! I'll bring my camera gear. Can't wait to get some great shots!",
    "time": "11:04 am"
  },
  {
    "isMe": true,
    "text": "Definitely! It's going to be a fun day of photography. Have you thought about what lenses you'll bring?",
    "time": "11:05 am"
  },
  {
    "isMe": false,
    "text": "Oh yeah, I'm thinking of bringing my 24-70mm for versatility and maybe the 50mm for those beautiful bokeh shots.",
    "time": "11:06 am",
  },
  {"isMe": false, "text": "Wildlife shots would be amazing! Do you have any specific shots in mind that you want to capture?", "time": "11:17 am"},

  {
    "isMe": true,
    "text": "Nice choices! I'll be bringing my wide-angle lens for those sweeping landscapes and maybe my telephoto for some close-ups of wildlife if we're lucky.",
    "time": "11:15 am",
  },
  {
    "isMe": true,
    "text": "I'm hoping to get some shots of the sunrise over the lake, and maybe some close-ups of the flowers in the meadow. What about you?",
    "time": "11:16 am"
  },
  {
    "isMe": false,
    "text": "I'm thinking of experimenting with long exposures near the waterfall, and maybe some candid shots of people enjoying the park.",
    "time": "11:17 am"
  },
  {
    "isMe": true,
    "text": "That sounds fantastic! It's going to be a creative day for sure. Do you need any extra gear like tripods or filters?",
    "time": "11:18 am",
  },
  {
    "isMe": false,
    "text": "I'll bring my tripod for those steady shots and a polarizing filter for enhancing the colors. Do you need me to bring anything extra?",
    "time": "11:19 am",
  },
  {
    "isMe": true,
    "text": "Actually, could you bring an extra memory card just in case? I always seem to fill mine up quickly.",
    "time": "11:20 am",
  },
  {
    "isMe": false,
    "text": "Sure thing, I'll make sure to pack an extra. Can't wait for Saturday, it's going to be an epic photoshoot!",
    "time": "11:40 am",
  },
  {
    "isMe": true,
    "text": "Agreed! The park is going to be our canvas, and our cameras the brushes. See you Saturday at 10, Bob!",
    "time": "11:42 am",
  },
];