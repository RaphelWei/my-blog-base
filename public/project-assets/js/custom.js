document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".clickable-image").forEach(img => {
      img.addEventListener("click", () => {
        const overlay = document.createElement("div");
        overlay.style.position = "fixed";
        overlay.style.top = "0";
        overlay.style.left = "0";
        overlay.style.width = "100vw";
        overlay.style.height = "100vh";
        overlay.style.backgroundColor = "rgba(0, 0, 0, 0.85)";
        overlay.style.display = "flex";
        overlay.style.justifyContent = "center";
        overlay.style.alignItems = "center";
        overlay.style.zIndex = "9999";
  
        const fullImg = document.createElement("img");
        fullImg.src = img.src;
        fullImg.style.maxWidth = "100%";
        fullImg.style.maxHeight = "100%";
        // fullImg.style.borderRadius = "8px";
        fullImg.style.boxShadow = "0 0 20px rgba(255,255,255,0.2)";
        fullImg.style.cursor = "zoom-out";
  
        overlay.appendChild(fullImg);
        overlay.addEventListener("click", () => {
          document.body.removeChild(overlay);
        });
  
        document.body.appendChild(overlay);
      });
    });
  });