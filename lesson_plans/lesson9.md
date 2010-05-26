# Lesson 9

26/05/2010

## Forms

* Introduce the form element.
* Introduce the input element.
* Show there are different types of input by adding a submit button.
* Briefly mention checkbox, radio, password.
* Briefly mention textarea and select.
* Create a new Sinatra action.
* Show how to have the form submit to that action.
* Show that form data is available in the params hash.
* Show that adding a name to an input creates a key in the hash.

* Exercise 1
  * Add a form to your app. (In index.erb)
  * Have it post to the /form_test action.
  * Experiment with the form:
    * Submit different values
    * Change the name of the input
    * Add another input

* Exercise 2
  * Have you form respond with "Your new status is ..."

* Exercise 3
  * Hook up the form to the "/update" action.

* Additional Exercises
  * What happens if you submit the form when it's empty? Can you fix that?
  * Can you think of any other ways of breaking the app?