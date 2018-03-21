Guild Messenger
================

> [Guild Messenger Demo](http://guild-messenger.herokuapp.com/)

Tech Project Focus
================

**Feature for sending/receiving messages on a channel**
  * Decided to finally explore ActionCable / Websocket as this seemed a perfect fit & chance for me to learn something

**Improve Tests**
  * Focused on Feature specs (selenium + chromedriver) to test memberships, and basic channel management

**Channel modal has the attribute of making it public/private.**
  * Made the private channel functionality creation flow simple, with the ability to add existing users simply to the channel via a 'memberships' notified by email

**Improve the usability -> UI / UX / Designn**
  * Pulled colors / branding / font patterns from existing Guild site to mimick a live chat
  * Deployed so Guild Team can play with. Emails / Assets / Websockets configuration needed
  * Mocked some data & setup a seed for prod. to mock a more realistic working application

# TODO
----
> Extend Actioncable / Websockets 
	* To show a live view of members actively connected to a classroom
	* Create more dynamic sender / receiver chatroom bubbles in the UI
	* Much more to explore about websockets & their use cases in production.. Very cool!

> Setup background Processing for emails ( & add notifications ) / and processing messages to be sent to ActionCable

> Extend the account page to include profile picture, categories of interest, management of memberships of private channels / classes & their users

> Add more functionality / specs / elaboration on memberships & what channel memberships means for the invitees.

> Connect to an internal Guild API and split off chatrooms for users in the same class as one another ( Find a Study Buddy, etc.. )
