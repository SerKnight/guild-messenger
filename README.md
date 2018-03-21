Guild Messenger
================

> [Guild Messenger Demo](https://guild-messenger.herokuapp.com/)

Tech Project Focus
================

**It's possible to type a short message and have it sent to another user**
  * Went with a mimick of the guild's visible organizational structure.. Users, Classrooms, Memberships, Messages
**It's possible to see messages sent from another user appear reasonably soon after they were sent**
	* Decided to finally explore ActionCable / Websocket as this seemed a perfect fit & chance for me to learn something

**Tests**
  * Focused on Model & Feature specs (selenium + chromedriver) to test memberships, classroom management, and conversations w/ messages
  * If I continued with breaking out the cables/channels would spec out & learn how each cable sends and receives data

**Usability**
  * Pulled colors / branding / font patterns from existing Guild site to mimick a live chat
  * Deployed so Guild Team can play with. Emails / Assets / Websockets configuration needed
  * Mocked some data & setup a seed for production to mock a more realistic working application

 **Extra**
 	* Basic analytics & some production email functionality for inviting someone else to a Classroom's chat
 	* As a developer it is always nice to actually know when ( & how ) someone is using the tools you build


# TODO
----
> Extend Actioncable / Websockets 
	* To show a live view of members actively connected to a classroom
	* Create more dynamic sender / receiver chatroom bubbles in the UI (this was hard.. logic is serialized into the html when a message is created.. Pretty sure I'd need multiple/different sender/receiver cable subscriptions to dynamically display incoming messages )
	* Much more to explore about websockets & their use cases in production.. Very cool!

> Setup background Processing for emails ( & add notifications ) / and perhaps BG processing of messages to be sent via ActionCable for scale? Need more ActionCable research

> Extend the account page to include profile picture (gathered from fb||google||linked oAuth), categories of interest, management of memberships of classrooms

> Add more elaboration on classroom memberships & permissions for owners / moderators, other than jsut deleting a channel

> Connect to an internal Guild API and split off chatrooms for users in the same class as one another ( Find a Study Buddy, etc.. )

> Would enable multi-line ( text area ) sending, as well as files & other rich content, Emoji support is an obvious next step.