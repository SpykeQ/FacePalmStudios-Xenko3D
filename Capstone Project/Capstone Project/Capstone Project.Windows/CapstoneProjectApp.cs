using SiliconStudio.Xenko.Engine;

namespace Capstone_Project
{
    class CapstoneProjectApp
    {
        static void Main(string[] args)
        {
            using (var game = new Game())
            {
                game.Run();
            }
        }
    }
}
