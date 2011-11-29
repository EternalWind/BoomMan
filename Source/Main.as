package
{
    import flash.display.MovieClip;

    import BoomMan;

    public class Main extends MovieClip
    {
        public function Main()
        {
            var game : BoomMan = new BoomMan();
            this.addChild(game);
        }
    }
}
