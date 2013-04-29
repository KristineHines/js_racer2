$(document).ready(function() {
  finish_line = 30
  player1_pos = 0
  player2_pos = 0
    
    $('body').keyup(function(evt) {

      if ((evt.keyCode == 69) && (player1_pos < finish_line))
      {
        player1 = $(this).find('#player1_strip td.active1')
        player1.removeClass('active1');
        player1.next().addClass('active1');
        player1_pos++;  
        if (player1_pos == finish_line)
        {
          alert('Player 1 won')
        }    
      }

      if ((evt.keyCode == 77) && (player2_pos < finish_line))
      {
        player2 = $(this).find('#player2_strip td.active2')
        player2.removeClass('active2');
        player2.next().addClass('active2');
        player2_pos++;
        if (player2_pos == finish_line)
        {
          alert('Player 2 won')
        }       
      }

    });
})
 
