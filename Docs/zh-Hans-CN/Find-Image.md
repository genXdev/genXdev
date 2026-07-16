# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | 将与所有可能的元数据类型匹配。 |
| `-Name` | String[] | — | — | 1 | `@('.\')` | 用于搜索图像的目录路径数组 |
| `-Language` | String | — | — | Named | — | 描述和关键词的语言。 |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | 要查找的描述文本，允许使用通配符。 |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | 要寻找的人，允许使用通配符。 |
| `-Objects` | String[] | — | — | Named | `@()` | 要查找的对象，允许使用通配符。 |
| `-Scenes` | String[] | — | — | Named | `@()` | 要查找的场景类别，支持通配符。 |
| `-PictureType` | String[] | — | — | Named | `@()` | 要过滤的图片类型（例如 'daylight'、'evening'、'indoor' 等）。支持通配符。 |
| `-StyleType` | String[] | — | — | Named | `@()` | 要筛选的风格类型（例如'休闲'、'正式'等）。支持通配符。 |
| `-OverallMood` | String[] | — | — | Named | `@()` | 筛选整体情绪（例如'平静'、'愉快'、'悲伤'等）。支持通配符。 |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | 通过图像EXIF元数据中的相机品牌进行筛选。支持通配符。 |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | 按图片EXIF元数据中的相机型号筛选。支持通配符。 |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | 根据图像EXIF元数据中的GPS纬度范围进行筛选 |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | 根据图像EXIF元数据中的GPS经度范围进行筛选 |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | 按图像EXIF元数据中的GPS海拔范围（米）过滤。 |
| `-GeoLocation` | Double[] | — | — | Named | — | 要搜索的附近地理坐标 [纬度, 经度]。 |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | 从地理位置搜索图像的最大距离（以米为单位） |
| `-MetaExposureTime` | Double[] | — | — | Named | — | 按图像EXIF元数据中的曝光时间范围（秒）筛选。 |
| `-MetaFNumber` | Double[] | — | — | Named | — | 根据图像EXIF元数据中的F数值（光圈）范围进行筛选。 |
| `-MetaISO` | Int32[] | — | — | Named | — | Filter by ISO sensitivity range in image EXIF metadata. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | 按焦距范围过滤图像EXIF元数据（单位：mm）。 |
| `-MetaWidth` | Int32[] | — | — | Named | — | 根据EXIF元数据按像素宽度范围筛选图像 |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter by image height range in pixels from EXIF metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | 根据EXIF元数据中的拍摄日期进行筛选。可以是一个日期范围。 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 画廊标题 |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | 画廊的描述 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 发送键后阻止键盘焦点返回 PowerShell |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 要使用的显示器，0 = 默认，-1 = 丢弃，-2 = 配置的辅助显示器，默认为全局：DefaultSecondaryMonitor 或 2（如果未找到） |
| `-Width` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 偏好数据文件的数据库路径 |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | 将图片嵌入为base64格式。 |
| `-NoFallback` | SwitchParameter | — | — | Named | — | 用于禁用回退行为的开关。 |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | 跳过数据库初始化和重建。 |
| `-AllDrives` | SwitchParameter | — | — | Named | — | 搜索所有可用驱动器 |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | 不递归到子目录 |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | 在目录遍历期间跟随符号链接和连接点。 |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | 目录遍历的最大递归深度。0 表示无限制。 |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | 在树中向上搜索相对项且未找到任何项时的最大递归深度。0 表示禁用。 |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | 纳入结果中的最大文件大小（以字节为单位）。0 表示无限制。 |
| `-MinFileSize` | Int64 | — | — | Named | `0` | 结果中包含的文件最小字节数。0 表示无最小值。 |
| `-ModifiedAfter` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之后修改的文件。 |
| `-ModifiedBefore` | DateTime | — | — | Named | — | 仅包含在此日期/时间（UTC）之前修改的文件。 |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | 要跳过的文件属性（例如：系统、隐藏或无）。 |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | 过滤包含露骨内容的图像。 |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | 筛选不含露骨内容的图像。 |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | 在浏览器图像库中显示搜索结果。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | 将图像数据作为对象返回。与 -ShowInBrowser 一起使用时，既可显示画廊又可返回对象。 |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 去除窗口边框和标题栏，以获得更简洁的外观。 |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | 将连接到浏览器并添加额外的按钮，如编辑和删除。仅当与 -ShowInBrowser 一起使用时有效。 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，必要时停止现有浏览器 |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌浏览器中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，在 Microsoft Edge 或 Google Chrome 中打开 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有注册的现代浏览器中打开 |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 在全屏模式下打开 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕中央 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 不要重用现有浏览器窗口，而是创建一个新窗口。 |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3D Solar System</title>
    <style>
        body { margin: 0; overflow: hidden; background-color: black; }
        #info {
            position: absolute;
            top: 20px;
            left: 20px;
            color: white;
            font-family: Arial, Helvetica, sans-serif;
            background: rgba(0,0,0,0.7);
            padding: 10px 20px;
            border-radius: 8px;
            pointer-events: none;
        }
        #controls {
            position: absolute;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            color: white;
            font-family: Arial, Helvetica, sans-serif;
            background: rgba(0,0,0,0.7);
            padding: 10px 20px;
            border-radius: 8px;
            pointer-events: none;
        }
    </style>
</head>
<body>
    <div id="info">🌌 3D Solar System - Drag to rotate, scroll to zoom</div>
    <div id="controls">
        <span id="fps">FPS: 60</span>
    </div>

    <script type="importmap">
        {
            "imports": {
                "three": "https://unpkg.com/three@0.160.0/build/three.module.js",
                "three/addons/": "https://unpkg.com/three@0.160.0/examples/jsm/"
            }
        }
    </script>

    <script type="module">
        import * as THREE from 'three';
        import { OrbitControls } from 'three/addons/controls/OrbitControls.js';
        import { CSS2DRenderer, CSS2DObject } from 'three/addons/renderers/CSS2DRenderer.js';

        // Scene setup
        const scene = new THREE.Scene();
        const camera = new THREE.PerspectiveCamera(45, window.innerWidth / window.innerHeight, 0.1, 1000);
        camera.position.set(20, 10, 30);

        const renderer = new THREE.WebGLRenderer({ antialias: true });
        renderer.setSize(window.innerWidth, window.innerHeight);
        renderer.shadowMap.enabled = true;
        renderer.shadowMap.type = THREE.PCFSoftShadowMap;
        document.body.appendChild(renderer.domElement);

        const labelRenderer = new CSS2DRenderer();
        labelRenderer.setSize(window.innerWidth, window.innerHeight);
        labelRenderer.domElement.style.position = 'absolute';
        labelRenderer.domElement.style.top = '0px';
        labelRenderer.domElement.style.left = '0px';
        labelRenderer.domElement.style.pointerEvents = 'none'; // allow clicking through to orbit controls
        document.body.appendChild(labelRenderer.domElement);

        // Controls
        const controls = new OrbitControls(camera, renderer.domElement);
        controls.enableDamping = true;
        controls.dampingFactor = 0.05;
        controls.autoRotate = false;
        controls.enableZoom = true;
        controls.target.set(0, 0, 0);
        controls.maxPolarAngle = Math.PI / 2;

        // Lighting
        // Ambient light for base visibility
        const ambientLight = new THREE.AmbientLight(0x404060);
        scene.add(ambientLight);

        // Main directional light (simulating sun)
        const dirLight = new THREE.DirectionalLight(0xffffff, 1.5);
        dirLight.position.set(10, 20, 5);
        dirLight.castShadow = true;
        dirLight.shadow.mapSize.width = 1024;
        dirLight.shadow.mapSize.height = 1024;
        const d = 30;
        dirLight.shadow.camera.left = -d;
        dirLight.shadow.camera.right = d;
        dirLight.shadow.camera.top = d;
        dirLight.shadow.camera.bottom = -d;
        dirLight.shadow.camera.near = 1;
        dirLight.shadow.camera.far = 50;
        scene.add(dirLight);

        const fillLight = new THREE.DirectionalLight(0x4040ff, 0.3);
        fillLight.position.set(-10, 0, -10);
        scene.add(fillLight);

        // Create starfield
        function createStars() {
            const vertices = [];
            for (let i = 0; i < 3000; i++) {
                const x = (Math.random() - 0.5) * 600;
                const y = (Math.random() - 0.5) * 600;
                const z = (Math.random() - 0.5) * 600;
                vertices.push(x, y, z);
            }
            const geometry = new THREE.BufferGeometry();
            geometry.setAttribute('position', new THREE.Float32BufferAttribute(vertices, 3));
            const material = new THREE.PointsMaterial({ color: 0xffffff, size: 0.2, transparent: true });
            const stars = new THREE.Points(geometry, material);
            scene.add(stars);
        }
        createStars();

        // Planet data
        const planetData = [
            { name: 'Mercury', radius: 0.4, distance: 4, color: 0x8c6f5e, speed: 0.02 },
            { name: 'Venus', radius: 0.7, distance: 6, color: 0xe6b800, speed: 0.015 },
            { name: 'Earth', radius: 0.8, distance: 8, color: 0x2233ff, speed: 0.01 },
            { name: 'Mars', radius: 0.5, distance: 10, color: 0xff4422, speed: 0.008 },
            { name: 'Jupiter', radius: 1.5, distance: 13, color: 0xd4a574, speed: 0.005 },
            { name: 'Saturn', radius: 1.2, distance: 16, color: 0xc8b889, speed: 0.004 },
            { name: 'Uranus', radius: 1.0, distance: 19, color: 0x73e8ff, speed: 0.003 },
            { name: 'Neptune', radius: 0.9, distance: 22, color: 0x3355ff, speed: 0.002 },
        ];

        // Store planet objects and their angles
        const planets = [];

        // Create the Sun
        const sunGeometry = new THREE.SphereGeometry(2.5, 64, 64);
        const sunMaterial = new THREE.MeshStandardMaterial({
            color: 0xffaa00,
            emissive: 0xff5500,
            emissiveIntensity: 1.5
        });
        const sun = new THREE.Mesh(sunGeometry, sunMaterial);
        sun.castShadow = false;
        sun.receiveShadow = false;
        scene.add(sun);

        // Sun label
        const sunLabelDiv = document.createElement('div');
        sunLabelDiv.textContent = 'Sun';
        sunLabelDiv.style.color = '#ffaa00';
        sunLabelDiv.style.fontSize = '20px';
        sunLabelDiv.style.fontWeight = 'bold';
        sunLabelDiv.style.textShadow = '1px 1px 2px black';
        const sunLabel = new CSS2DObject(sunLabelDiv);
        sunLabel.position.set(0, 3.5, 0);
        sun.add(sunLabel);

        // Add a slight glow effect to sun (point light)
        const sunLight = new THREE.PointLight(0xffaa00, 1, 0, 0);
        sunLight.position.set(0, 0, 0);
        scene.add(sunLight);

        // Create orbits and planets
        planetData.forEach((data, index) => {
            // Orbit path
            const points = [];
            const count = 64;
            const radius = data.distance;
            for (let i = 0; i <= count; i++) {
                const angle = (i / count) * Math.PI * 2;
                const x = radius * Math.cos(angle);
                const z = radius * Math.sin(angle);
                points.push(new THREE.Vector3(x, 0, z));
            }
            const orbitGeometry = new THREE.BufferGeometry().setFromPoints(points);
            const orbitMaterial = new THREE.LineBasicMaterial({ color: 0x444466, transparent: true, opacity: 0.3 });
            const orbitLine = new THREE.Line(orbitGeometry, orbitMaterial);
            scene.add(orbitLine);

            // Planet
            const planetGeometry = new THREE.SphereGeometry(data.radius, 32, 32);
            const planetMaterial = new THREE.MeshStandardMaterial({
                color: data.color,
                roughness: 0.5,
                metalness: 0.1
            });
            const planet = new THREE.Mesh(planetGeometry, planetMaterial);
            planet.castShadow = true;
            planet.receiveShadow = true;
            
            // Random initial angle
            const initAngle = Math.random() * Math.PI * 2;
            planet.position.x = data.distance * Math.cos(initAngle);
            planet.position.z = data.distance * Math.sin(initAngle);
            scene.add(planet);

            // Label
            const labelDiv = document.createElement('div');
            labelDiv.textContent = data.name;
            labelDiv.style.color = 'white';
            labelDiv.style.fontSize = '14px';
            labelDiv.style.fontWeight = 'bold';
            labelDiv.style.backgroundColor = 'rgba(0,0,0,0.5)';
            labelDiv.style.padding = '2px 6px';
            labelDiv.style.borderRadius = '4px';
            labelDiv.style.pointerEvents = 'none';
            const label = new CSS2DObject(labelDiv);
            label.position.set(0, data.radius + 0.5, 0);
            planet.add(label);

            // For Saturn, add rings
            if (data.name === 'Saturn') {
                const ringGeometry = new THREE.RingGeometry(1.8, 2.5, 64);
                const ringMaterial = new THREE.MeshStandardMaterial({
                    color: 0xc8b889,
                    side: THREE.DoubleSide,
                    transparent: true,
                    opacity: 0.6,
                    roughness: 0.7
                });
                const ring = new THREE.Mesh(ringGeometry, ringMaterial);
                ring.rotation.x = Math.PI / 2;
                ring.position.y = 0;
                planet.add(ring);
            }

            // Store planet data for animation
            planets.push({
                mesh: planet,
                distance: data.distance,
                speed: data.speed,
                angle: initAngle
            });
        });

        // Helper function to create a texture ring (for Earth - non-CSS)
        // Not needed for simplicity

        // Animation loop
        let clock = new THREE.Clock();
        let frameCount = 0;
        let lastTime = performance.now();

        function animate() {
            const delta = clock.getDelta();
            const elapsedTime = performance.now();

            // Update planet positions
            planets.forEach(planet => {
                planet.angle += planet.speed * delta * 5; // adjust speed factor
                planet.mesh.position.x = planet.distance * Math.cos(planet.angle);
                planet.mesh.position.z = planet.distance * Math.sin(planet.angle);
                // Rotate planet on its axis
                planet.mesh.rotation.y += 0.01;
            });

            // Sun rotation
            sun.rotation.y += 0.002;

            // FPS counter
            frameCount++;
            if (elapsedTime - lastTime >= 1000) {
                document.getElementById('fps').textContent = `FPS: ${frameCount}`;
                frameCount = 0;
                lastTime = elapsedTime;
            }

            controls.update();

            // Render
            renderer.render(scene, camera);
            labelRenderer.render(scene, camera);

            requestAnimationFrame(animate);
        }

        animate();

        // Handle window resize
        window.addEventListener('resize', onWindowResize, false);
        function onWindowResize() {
            camera.aspect = window.innerWidth / window.innerHeight;
            camera.updateProjectionMatrix();
            renderer.setSize(window.innerWidth, window.innerHeight);
            labelRenderer.setSize(window.innerWidth, window.innerHeight);
        }

        // Optional: add a subtle fog
        scene.fog = new THREE.FogExp2(0x000000, 0.0015);

        console.log('Solar system loaded!');
    </script>
</body>
</html> |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的AI偏好替代设置，如语言、图像收藏等 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 不要使用存储在会话中的替代设置来处理AI偏好，如语言、图像集合等 |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 按此速率（像素/秒）自动滚动页面（设为 null 可禁用） |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 在可见范围内动画化矩形（物体/面），每300ms循环一次 |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 强制单列布局（居中，1/3屏幕宽度） |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 要添加到每个图像路径前的前缀（例如用于远程URL） |
| `-MinConfidenceRatio` | Double | — | — | Named | — | 用于过滤人物、场景和物体的最低置信度比率（0.0-1.0）。仅返回置信度大于等于此值的人物、场景和物体数据。 |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
