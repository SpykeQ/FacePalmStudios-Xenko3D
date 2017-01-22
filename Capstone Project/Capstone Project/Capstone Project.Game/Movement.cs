using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SiliconStudio.Core.Mathematics;
using SiliconStudio.Xenko.Input;
using SiliconStudio.Xenko.Engine;

namespace Capstone_Project {
    public class Movement : SyncScript {
        // Declared public member fields and properties will show in the game studio
        TransformComponent t;
        public override void Start() {
            // Initialization of the script.
            t = Entity.Get<TransformComponent>();
        }
        public override void Update() {
            // Do stuff every new frame
            if(Input.IsKeyDown(Keys.Up)) t.Position -= new Vector3(0, 0, 0.1f);
            if(Input.IsKeyDown(Keys.Down)) t.Position += new Vector3(0, 0, 0.1f);
            if(Input.IsKeyDown(Keys.Left)) t.Position -= new Vector3(0.1f, 0, 0);
            if(Input.IsKeyDown(Keys.Right)) t.Position += new Vector3(0.1f, 0, 0);
            if(Input.IsKeyDown(Keys.Space)) t.Position = new Vector3(0, 1.5f, -2f);
        }
    }
}
