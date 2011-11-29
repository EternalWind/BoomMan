package 
{
    import flash.display.Sprite;

    import BoomMan;

    public class State extends Sprite
    {
        protected var root : BoomMan;

        public function State(game : BoomMan)
        {
            root = game;
        }

        public function Load() : void {}

        public function Unload() : void {}
    }
}
