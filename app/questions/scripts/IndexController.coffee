angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current        = 1
    $scope.totalQuestions = 66
    $scope.options        = duration: 0.3 ; curve: "linear"
    $scope.questions      = {
      1: "I need you to initiate sex."
      2: "I need to cuddle more."
      3: "I need to know when you find me irresistible. "
      4: "I want to talk more about our kids."
      5: "I need you to ask me about my hopes and aspirations."
      6: "I need to have a conversation with you."
      7: "I need to talk to you about my day."
      8: "I need our reunions to be warm and affectionate."
      9: "I need you to be more affectionate with me, to touch me more."
      10: "I need you to ask me about my work."
      11: "I need you to put down the paper or mute the TV when I want to talk."
      12: "I need a foot rub."
      13: "I need a back rub or a massage."
      14: "I need for you to offer to do a household chore so I can get some relief."
      15: "I need you to tell me I look nice."
      16: "I need you to answer me when I call your name."
      17: "I need a romantic drive or get away."
      18: "I need to go out to dinner and a movie."
      19: "I need to take a long bath together."
      20: "I need you to cook a meal or order food in for one night a week."
      21: "I need to see my friends."
      22: "I need for us to have an adventure together."
      23: "I need some time alone for myself."
      24: "I need you to look happy when you first see me at the end of the day."
      25: "I need a kiss goodnight every night."
      26: "I need to tell you how my day went and for you to be interested."
      27: "I want to talk about how I’ve changed."
      28: "I need to visit my family."
      29: "I need to cuddle before we go to sleep."
      30: "I need for you to do more housework."
      31: "I need to get dressed up and go out with you."
      32: "I need to go to a music or dance concert."
      33: "I need to travel."
      34: "If I am depressed, I need you to be my friend and not withdraw."
      35: "I need to have a dinner party with some of our friends."
      36: "I wish we could go dancing."
      37: "I want you to tell me that you love me."
      38: "I need to know that you think I’m sexy."
      39: "I need to have more respect from you."
      40: "I need you to talk to me."
      41: "I need you to tell me that I’m sexy and irresistible."
      42: "I need you to ask me more questions."
      43: "I need you to listen to me when I’m upset."
      44: "I need you to hear my anger without you getting upset or defensive."
      45: "I need some quiet time alone when I first come home."
      46: "I need your help losing weight."
      47: "I need to buy some new clothes."
      48: "I need to have a weekly date."
      49: "I need to hear that you are still my best friend."
      50: "I need to know that you feel proud of me."
      51: "I need you to support me with your parents and your siblings."
      52: "I need you to tell your parents that you think I’m a great parent."
      53: "I need you to drink less."
      54: "I need you to not use drugs."
      55: "I need you to control your irritability and anger."
      56: "I need you to listen to me when I’m sad and not blame me."
      57: "I want to be closer to my family with you."
      58: "I need your help getting into better physical shape."
      59: "I need an adventure."
      60: "I need for us to have a better balance between work and family."
      61: "I need to have more music in our lives together."
      62: "I need an evening of erotic (or non-erotic) massage."
      63: "I need for us to have a real savings plan."
      64: "I need you to take my side when your family criticizes me."
      65: "I need us to have real weekends where we do things as a family."
      66: "I need you to buy me a surprise gift."
    }

    $scope.previousQuestion = () ->
      $scope.current -= 1
      $scope.current = $scope.totalQuestions if $scope.current < 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.nextQuestion = () ->
      $scope.current += 1
      $scope.current = 1 if $scope.current > $scope.totalQuestions
      supersonic.ui.animate("slideFromRight", $scope.options).perform()

    $scope.currentQuestion = () -> $scope.questions[$scope.current]

    $scope.resetQuestions = () ->
      return if $scope.current == 1
      $scope.current = 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()