# Show-FoundImagesInBrowser

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `showfoundimages

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-FoundImagesInBrowser [[-InputObject] <Object[]>] [-AcceptLang <String>] [-All] [-ApplicationMode] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-Force] [-FullScreen] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Left] [-Maximize] [-Monitor <Int32>] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-OnlyReturnHtml] [-PassThru] [-Private] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object[] | — | ✅ (ByValue) | 0 | `@()` | 要在画廊中显示的图像数据对象。 |
| `-Interactive` | SwitchParameter | — | — | Named | — | 连接到浏览器并添加编辑和删除等额外按钮 |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | 画廊标题 |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | 将鼠标悬停在图片上，即可查看人脸识别和物体检测数据 |
| `-Private` | SwitchParameter | — | — | Named | — | 在无痕/隐私浏览模式下打开 |
| `-Force` | SwitchParameter | — | — | Named | — | 强制启用调试端口，必要时停止现有浏览器 |
| `-Edge` | SwitchParameter | — | — | Named | — | 在 Microsoft Edge 中打开 |
| `-Chrome` | SwitchParameter | — | — | Named | — | 在谷歌浏览器中打开 |
| `-Chromium` | SwitchParameter | — | — | Named | — | 根据默认浏览器，在 Microsoft Edge 或 Google Chrome 中打开 |
| `-Firefox` | SwitchParameter | — | — | Named | — | 在 Firefox 中打开 |
| `-All` | SwitchParameter | — | — | Named | — | 在所有注册的现代浏览器中打开 |
| `-Monitor` | Int32 | — | — | Named | `-2` | 要使用的显示器，0 = 默认，-1 = 丢弃，-2 = 配置的辅助显示器，默认为全局：DefaultSecondaryMonitor 或 2（如果未找到） |
| `-FullScreen` | SwitchParameter | — | — | Named | — | 在全屏模式下打开 |
| `-Width` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始宽度 |
| `-Height` | Int32 | — | — | Named | `-1` | Web浏览器窗口的初始高度 |
| `-X` | Int32 | — | — | Named | `-999999` | 网络浏览器窗口的初始X位置 |
| `-Y` | Int32 | — | — | Named | `-999999` | Web浏览器窗口的初始Y坐标 |
| `-Left` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕左侧 |
| `-Right` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕右侧 |
| `-Top` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕顶部 |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | 将浏览器窗口放置在屏幕中央 |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | 隐藏浏览器控件 |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | 防止加载浏览器扩展 |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | 禁用弹出窗口拦截器 |
| `-AcceptLang` | String | — | — | Named | `$null` | 设置浏览器接受语言 HTTP 头 |
| `-KeysToSend` | String[] | — | — | Named | — | 要发送到浏览器窗口的按键，请参阅 cmdlet GenXdev\Send-Key 的文档 |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | 打开浏览器窗口后聚焦 |
| `-SetForeground` | SwitchParameter | — | — | Named | — | 打开后将浏览器窗口置为前台 |
| `-Maximize` | SwitchParameter | — | — | Named | — | 定位后最大化窗口 |
| `-SetRestored` | SwitchParameter | — | — | Named | — | 定位后将窗口恢复到正常状态 |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | 恢复 PowerShell 窗口焦点 |
| `-NewWindow` | SwitchParameter | — | — | Named | — | 创建一个新的浏览器窗口，而不是重复使用现有的窗口 |
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
| `-EmbedImages` | SwitchParameter | — | — | Named | — | 将图像嵌入为base64数据URL，而不是file:// URL，以提高可移植性。 |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | 发送键时转义控制字符和修饰符 |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 在发送按键时，保持键盘焦点在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | 请在发送键时使用Shift+Enter代替Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 发送按键时不同输入字符串之间的延迟（毫秒） |
| `-NoBorders` | SwitchParameter | — | — | Named | — | 去除窗口边框和标题栏，以获得更简洁的外观。 |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return the browser window helper object for further manipulation |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 清除存储在会话中的人工智能偏好替代设置 |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 仅将设置存储在持久化偏好中，不影响会话 |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | 按此速率（像素/秒）自动滚动页面（设为 null 可禁用） |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | 在可见范围内动画化矩形（物体/面），每300ms循环一次 |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | 强制单列布局（居中，1/3屏幕宽度） |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | 要添加到每个图像路径前的前缀（例如用于远程URL） |

## Related Links

- [Show-FoundImagesInBrowser on GitHub](https://github.com/genXdev/genXdev)
