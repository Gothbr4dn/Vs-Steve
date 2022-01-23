package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [20, 21, 22], 0, false, isPlayer);
		animation.add('bf-pixel', [0, 2, 1], 0, false, isPlayer);
		animation.add('tuxsteveuoh', [5, 6, 7], 0, false, isPlayer);
		animation.add('stevelucky', [5, 6, 7], 0, false, isPlayer);
		animation.add('senpai-angry', [8, 6, 9], 0, false, isPlayer);
		animation.add('gf', [23, 25, 24], 0, false, isPlayer);
		animation.add('gf-christmas', [23, 25, 24], 0, false, isPlayer);
		animation.add('gf-pixel', [23, 25, 24], 0, false, isPlayer);
		animation.add('steve-armor', [10, 6, 11], 0, false, isPlayer);
		animation.add('tuxsteve', [8, 6, 9], 0, false, isPlayer);
		animation.add('stevefnm', [8, 6, 9], 0, false, isPlayer);
		animation.add('stevematt', [10, 6, 11], 0, false, isPlayer);	
		animation.add('alex', [12, 13, 14], 0, false, isPlayer);
		animation.add('alexpickaxe', [30, 31, 30], 0, false, isPlayer);
		animation.add('alexpickaxemad', [12, 13, 14], 0, false, isPlayer);
		animation.add('alexchill', [30, 31, 30], 0, false, isPlayer);
		animation.add('alexsunday', [30, 31, 30], 0, false, isPlayer);
		animation.add('herobrine', [15, 16, 17], 0, false, isPlayer);
		animation.add('bfeyes', [3, 2 , 4], 0, false, isPlayer);
		animation.add('dad', [12, 13, 14], 0, false, isPlayer);
		animation.add('Tiago', [18, 19, 19], 0, false, isPlayer);
		animation.add('TiagoSwag', [28, 29, 29], 0, false, isPlayer);
		animation.add('gabo', [26, 27, 27], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'tuxsteveuoh' | 'senpai-angry' | 'spirit' | 'gf-pixel' | 'Tiago' | 'TiagoSwag' | 'herobrine' | 'stevelucky' | 'alex' | 'alexchill' | 'alexpickaxe' | 'tuxsteve':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
