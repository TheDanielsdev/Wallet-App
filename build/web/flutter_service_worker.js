'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "e391fd68479746fff5d5b06038d821ad",
"assets/assets/13k.svg": "5a7290c95167ae181509c1e633e7a1fb",
"assets/assets/2100.svg": "ec7e5b2d39d48da2fd17f23059636b1d",
"assets/assets/arrow%2520back.svg": "d6af99e54c8bcceaa9c713a1e2da30ad",
"assets/assets/btmnav.svg": "dddc40622d61a27272cf046ed9759efc",
"assets/assets/card%2520body.svg": "eda2ae5db16f6d0598ff35e90d92ec7e",
"assets/assets/card%2520chip.svg": "36844b1d9fcdb8169ea3cfc905d8409b",
"assets/assets/card%2520design.svg": "2cb92eecab811c9843389bc9b7503e9f",
"assets/assets/card%2520text.svg": "ac47a42dcb7149cd1da85e842f9fd06d",
"assets/assets/changepix.svg": "37db5272ca9cf0c22decef037246a135",
"assets/assets/chats.svg": "1be35ad7a59f892e191db287c038d400",
"assets/assets/edit.svg": "ce1a6d3539e7b02d748868cc63312d61",
"assets/assets/facebook.svg": "95dc729166232cb6772e18c2b3335899",
"assets/assets/google.svg": "d9cbe8269a6037d9cf6a61edca61a26e",
"assets/assets/home_card.svg": "81dc678af4e25cf57328abf73695c246",
"assets/assets/home_design.svg": "cce0d73b41c316ce2ee0315941eb54fe",
"assets/assets/home_featured.svg": "95d46fbe8e0965023d3b897873673bb0",
"assets/assets/home_nav.svg": "66b70b174949a275d0250d67b604192e",
"assets/assets/home_price.svg": "5c93f826c4fd24beb4d53ad6e03bd559",
"assets/assets/horizontal%2520card.svg": "d44690c877b2509f765a782d275b6cff",
"assets/assets/last_trans.svg": "b57e9eb3d2c529fc6c2b7afe575ea98e",
"assets/assets/logout.svg": "1b22d0a6d3f061050074980eeda7594e",
"assets/assets/mainstats.svg": "6e8dbcf19389ca049a94afdbaaf86eed",
"assets/assets/me1%2520(2).JPG": "6f030bca5ab7b3704fedcac9cc4e2628",
"assets/assets/me1.JPG": "d30dc2d2d3d4b39997c93ca77890ac24",
"assets/assets/notification-bing.png": "6df688a0369a26d72455de03a4651e11",
"assets/assets/notification-bing.svg": "76802500d599c54feda1cddd30eaa9d4",
"assets/assets/totalbal.svg": "e646d4fc823015e5e6bc369edf2258e9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "91d84978002a35d55b227fdcc639d1c7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"canvaskit/canvaskit.js": "43fa9e17039a625450b6aba93baf521e",
"canvaskit/canvaskit.wasm": "04ed3c745ff1dee16504be01f9623498",
"canvaskit/profiling/canvaskit.js": "f3bfccc993a1e0bfdd3440af60d99df4",
"canvaskit/profiling/canvaskit.wasm": "a9610cf39260f60fbe7524a785c66101",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e90039732736e930084751e0fb6e2d0b",
"/": "e90039732736e930084751e0fb6e2d0b",
"main.dart.js": "fa521b6870cc9facc19a337549b26ac9",
"manifest.json": "a78d14d3cd6d2fbdd9a6a8062fc9ef0f",
"version.json": "bc9d7160770c71a598afa4dbcfaedcdc"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
