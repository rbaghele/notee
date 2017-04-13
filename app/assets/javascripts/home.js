var NT = NT || {};

NT = (function($, window, document, notee){
  notee.home = {
    toggleSignUp: function(){
      $socialSignupWrapper = $('.social-signup-wrapper');
      $emailSignupWrapper = $('.email-signup-wrapper');

      if( $socialSignupWrapper.hasClass('hide') ){
        $emailSignupWrapper.addClass('hide');
        $socialSignupWrapper.removeClass('hide');
      }else{
        $socialSignupWrapper.addClass('hide');
        $emailSignupWrapper.removeClass('hide');
      }

    }
  },

  $(function(){
    // notee.home.toggleSignUp();
  });

  return notee;
})(jQuery, this, this.document, NT)
