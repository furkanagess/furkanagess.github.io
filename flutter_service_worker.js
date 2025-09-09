'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "e77ef102b1fe9c18f5d3737bc911f05b",
"version.json": "009c9e65172e010890f7f65fde438006",
"index.html": "f3d86d81607cc5113d451edcd9a7d224",
"/": "f3d86d81607cc5113d451edcd9a7d224",
"main.dart.js": "f39944aa4a24fdd2a0b4f66a3d5d6b48",
"flutter.js": "35408b1be0f5de68cc5d1c5175d717ed",
"app-ads.txt": "8527303c0f993ed1abd40e4b845d525b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "63e4f1df3ea38c5a97eba92694dcea9a",
"assets/NOTICES": "b1f34950762e67bba4c88cfead7aeee2",
"assets/FontManifest.json": "1ee01b3a17de7c45152227d9697f1faa",
"assets/AssetManifest.bin.json": "f7a9e0d3b5b65662d624550940642ab8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "5174e0817440ef38ef42993fde74e5d5",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Solid-900.otf": "e151d7a6f42f17e9ea335c91d07b3739",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Regular-400.otf": "df86a1976d76bd04cf3fcaf5add2dd0f",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Brands-Regular-400.otf": "01aca663c610c7e9b7835f49ecf9b008",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"assets/files/caglar_furkan_resume.pdf": "abd20ba74316e3a24b83cd03b1eb6403",
"assets/AssetManifest.bin": "7dfc958c2b46cbe11ad0bd29da205781",
"assets/fonts/MaterialIcons-Regular.otf": "997340543edc2f29b33768cb135d0a11",
"assets/assets/images/android-svg.svg": "f13d4a38c3552318dcc693e2e0942a80",
"assets/assets/images/flutter-svg.svg": "ed9ae2ef41760aff0a54ee11ee3cc657",
"assets/assets/images/android.svg": "0a04451ad3b5886234ef80268c803e46",
"assets/assets/images/black-dsc.png": "1bbde0ea52487cbc138a8d61c69ca02c",
"assets/assets/images/flutter-color.svg": "749737f954a8acaae1b3d389b3fc857f",
"assets/assets/images/dev_img.png": "b6b5ea00e11fb2b73aeb72f0293cc63f",
"assets/assets/images/dev-ic-modified.png": "6b8df4c55fdbd3685a6e113df60aa2b0",
"assets/assets/images/firebase-svg.svg": "a866e2dd1056834ab7e78656dcaf4a1f",
"assets/assets/images/portfolio_icon.png": "7cb8fcd768c7538bd9c9efd457a0df18",
"assets/assets/images/ruler.svg": "4791ae452335f1ba68a2787f872f3e5f",
"assets/assets/images/slider.svg": "a4fc3ee8b34de4bfab375880f4297c49",
"assets/assets/images/dsc.png": "90dde6673c624a9340b16af06f6506d1",
"assets/assets/images/go-color.svg": "d83a4a9b233edf33637f6f4ad84e2fee",
"assets/assets/images/go-svg.svg": "d3036529d573f2a039c017f701b6a6a5",
"assets/assets/images/android-color.svg": "376bf5b5733d2dfc9845a651e8a21c85",
"assets/assets/images/pp.jpeg": "1e33691a184a8acf8263cbf4dd9d67c1",
"assets/assets/images/dev-ic.png": "58b270b178213ba60902b72db38babef",
"assets/assets/icons/finbrain_logo.png": "ae6918936959171088d12179c4705687",
"assets/assets/icons/elements_logo.png": "19cc47a9bc9d934ec05eabd7d19751c2",
"assets/assets/icons/new_logo.png": "aed1bbed6348f22e508c01f8f308a074",
"assets/assets/icons/favicon.png": "fa6ed5138de9a397f69d9635704051e8",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/MaterialIcons-Regular.otf": "9349e02902da8df6ea0e65da69953bc8",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"canvaskit/skwasm.js": "95f1685cbe3a3e1d94cac24eb0148a02",
"canvaskit/skwasm_heavy.js": "53b1d7d620269ae543e0dc5311a07f49",
"canvaskit/skwasm.js.symbols": "e31307fb1ee9433185017421b88ab53a",
"canvaskit/canvaskit.js.symbols": "8f0f917e4685ef832e5f89c3c522a450",
"canvaskit/skwasm_heavy.js.symbols": "a0104c9895f4c030cda6ca364eccbaa4",
"canvaskit/skwasm.wasm": "9e7911fecb4bbd6ab450c6c377ca2aa2",
"canvaskit/chromium/canvaskit.js.symbols": "985866e00404ea2821bbc97f1fdd0023",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "44c3521ce1b66fe6077ade02498f92ad",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.wasm": "6c895a0bf572e1f352057981fa547ac5",
"canvaskit/skwasm_heavy.wasm": "79ffce1a2e63dabb8d5613383e9ba78b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
