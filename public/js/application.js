$(document).ready(function() {
  finish_line = 30;
  player1_pos = 0;
  player2_pos = 0;
  playing = true
  start_time = null;
  end_time = null;
  start_time = new Date();
  
  $('body').keyup(function(evt) {
    if ((evt.keyCode == 69) && (player1_pos < finish_line) && playing == true)
    {
      player1 = $(this).find('#player1_strip td.active1');
      player1.removeClass('active1');
      player1.next().addClass('active1');
      player1_pos++;  
      if (player1_pos == finish_line)
      {
        end_time = new Date();
        var time_played = (end_time - start_time) / 1000;
        playing = false
        $.ajax({
          url: '/game/' + current_game_id,
          method: 'PUT',
          data: {winner_id: player_1_id, time_played: time_played, game_id: current_game_id},
          success: function(data){}
        });
      }    
    }

    if ((evt.keyCode == 77) && (player2_pos < finish_line) && playing == true)
    {
      player2 = $(this).find('#player2_strip td.active2');
      player2.removeClass('active2');
      player2.next().addClass('active2');
      player2_pos++;
      if (player2_pos == finish_line)
      {
        end_time = new Date();
        var time_played = (end_time - start_time) / 1000;
        playing = false
        $.ajax({
          url: '/game/' + current_game_id,
          method: 'PUT',
          data: {winner_id: player_2_id, time_played: time_played, game_id: current_game_id},
          success: function(data){}
        });
      }       
    }
  });
})
 
