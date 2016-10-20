class WelcomeController < ApplicationController
  def index
    @message = 'Super Street Fighter II: Rails'
    @subtitle = 'Click the gif for character bios... /movelist for special moves'
  end

  def movelist
    if params[:list].casecmp('ryu').zero?
      @name = 'Ryu'
      @moves1 = 'Hadouken --- Fireball: (↓↘→ + P)'
      @moves2 = 'Shouryuken --- Dragon Punch: (→↓↘ + P)'
      @moves3 = 'Tatsumaki Senpuu Kiaku --- Hurricane Kick: (↓↙← + K)'
      @strat = "Ryu's basic game centers around two moves: the Hadouken (Fireball) and the Shoryuken (Dragon Punch).
      The Hadouken is a powerful move - it advances across the screen independently of Ryu, harming anything it touches. Even if blocked, it still does damage (albeit only a little). As a result, throwing one forces the opponent to react; they have to try and find a way around it, or they will eventually succumb to the constant chip damage.
      Every character has an easy way to try and avoid the Hadouken: jumping over it. Unfortunately for them, Ryu has also been equipped with the game's best anti-air move: the Shoryuken. If an opponent reacts to a Hadouken by jumping over it, Ryu can respond by performing a Shoryuken as they are coming down. Since they cannot block while in the air, there is nothing they can do to prevent it from hitting them.
      If a character jumps over a Hadouken from a distance, out of the range of Ryu's Shoryuken, he can still walk forward and force them to land on a cr.hk (depending on the range of his jumping attacks). They cannot block this when timed correctly, and it will knock them down."

    elsif params[:list].casecmp('ken').zero?
      @name = 'Ken'
      @moves1 = 'Hadouken --- Fireball: (↓↘→ + P)'
      @moves2 = 'Shouryuken --- Dragon Punch: (→↓↘ + P)'
      @moves3 = 'Tatsumaki Senpuu Kiaku --- Hurricane Kick: (↓↙← + K)'
      @strat = "Ken's DP is one of the best moves in ST. It comes out quickly, has mad priority and recovers really fast. Only O. Ken has a better DP style move in this game. You can therefore exploit the assets of the DP to use Psychic style tactics to beat pokes and throw attempts to really head-fuck your opponent. The use of Psychic DP's is matchup-dependent, but you can DP through Dhalsim's long limbs, a Shoto's sweep or you can clip an opponent throwing a fireball on startup and pass through the fireball or trade. AI won't expand on this, but take a look at any high-level N. Ken player (particularly Japanese players Ani-Ken and M.Tsun) and you will see lots of uses of this technique."
    else
      @name = 'Please choose Ryu or Ken for their movelist, other characters coming soon!'
    end
  end
end
