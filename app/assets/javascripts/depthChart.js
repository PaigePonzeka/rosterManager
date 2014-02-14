$(document).ready(function(){

     // reintialize sortable
     $( ".js-batting-order" ).sortable({
      axis: 'y',
      //handle: ".js-drag-player",
      helper: "clone",
      stop: function(){
        $('.js-batting-order li').each(function(){
          var position = $(this).index() + 1;
          $(this).find('.batting-order-number').html(position);
        });
      }
     });

  // highlight all the players in a position
  $('.js-player').hover(function(){
    var playerClass = getPlayerClass($(this));
    $('.'+playerClass).addClass("active-player");
  }, function(){
    var playerClass = getPlayerClass($(this));
    $('.'+playerClass).removeClass("active-player");
  });

  $('.js-batting-order').on('click', '.js-delete', function(){
    var $this = $(this);
    var playerClass = $this.data('playerclass');
    var positionClass = $this.data('positionclass');
    // remove player
    $('.' + positionClass).removeClass('disabled-position').find('.js-player').removeClass('disabled-player');
    $('.' + playerClass).removeClass('disabled-player').removeClass('selected-player');
    $(this).closest('.batting-order-player').remove();
  });

  // when you click a player add it to the roster 
  // and disable the player in other locations
  $('.js-player').click(function(){
    $player = $(this);

    if($player.hasClass('disabled-player') || $player.hasClass('selected-player')) {
      return;
    }
     var playerClass = getPlayerClass($player);
     var playerName = $player.text();
     var playerPosition = $player.data('position');
     var positionClass = $player.data('positionclass');
     var positionNumber = $('.js-batting-order li').length + 1;
     $('.' +playerClass).addClass('disabled-player');

      addPlayerToRoster(playerName, playerPosition, playerClass, positionClass, positionNumber); 

     // disable the position 
     if(playerPosition != "EH") {
      $('.' + positionClass).addClass('disabled-position').find('.js-player').addClass("disabled-player");
     }
     
    $(this).removeClass('disabled-player').addClass('selected-player');
  });
  
  function addPlayerToRoster(playerName, playerPosition, playerClass, positionClass, posNumber) {
    // Add the player and the position to the roster
    var dragIcon = $('<i class="icon-drag js-drag-player"></li>');
    var playerNumber = $("<span />").addClass('batting-order-number').html(posNumber);
     var playerItemName = $("<span />").addClass('batting-order-player-name').html(playerName);
     var playerItemRemove = $('<span />').addClass('js-delete').addClass('delete-icon').attr("data-playerclass", playerClass).attr("data-positionclass", positionClass).html("X");
     var playerItemPosition = $("<span />").addClass('batting-order-player-position').html(playerPosition);
     var playerItem = $('<li />').addClass("batting-order-player").append(playerNumber).append(dragIcon).append(playerItemName).append(playerItemPosition).append(playerItemRemove);
     $('.js-batting-order').append(playerItem);

     $( ".js-batting-order" ).sortable( "refresh" );
  }

  function getPlayerClass($player){
    return $player.data('playerclass');
  }
});