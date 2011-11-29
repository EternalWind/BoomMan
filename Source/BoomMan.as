package 
{
    import flash.display.Sprite;
    import flash.media.Sound;

    import StartScreen;
    import BattleScreen;
    import State;

    public class BoomMan extends Sprite
    {
        private var state : State;
        private var bgm : Sound;
        private var dataDir : String;
        private var musicDir : String;
        private var soundDir : String;

        public function BoomMan(data_directory : String = "Data", music_directory : String = "Music", 
            sound_directory : String = "Sound")
        {
            dataDir = data_directory;
            musicDir = music_directory;
            soundDir = sound_directory;
            bgm = null;
            state = null;

            LoadStartScreen();
        }

        public function LoadStartScreen() : void
        {
            if(state != null)
            {
                state.Unload();
                this.removeChild(state);
            }

            state = new StartScreen(this);
            state.Load();
            this.addChild(state);
        }

        public function LoadBattleScreen() : void
        {
            if(state != null)
            {
                state.Unload();
                this.removeChild(state);
            }

            state = new BattleScreen(this);
            state.Load();
            this.addChild(state);
        }

        public function GetBGMObject() : Sound
        {
            return bgm;
        }

        public function GetDataDirectory() : String
        {
            return dataDir;
        }

        public function GetMusicDirectory() : String
        {
            return musicDir;
        }

        public function GetSoundDirectory() : String
        {
            return soundDir;
        }
    }
}
