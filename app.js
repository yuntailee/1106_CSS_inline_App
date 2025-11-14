// 預設顯示第一個
document
  .querySelector('.manufacturer-list[data-content="1"]')
  .classList.add("active");
document
  .querySelector('.manufacturer-tab[data-tab="1"]')
  .classList.add("active");

// 點擊標題切換清單
document.querySelectorAll(".manufacturer-tab").forEach((tab) => {
  tab.addEventListener("click", function () {
    const tabId = this.getAttribute("data-tab");

    // 移除所有 active
    document
      .querySelectorAll(".manufacturer-tab")
      .forEach((t) => t.classList.remove("active"));
    document
      .querySelectorAll(".manufacturer-list")
      .forEach((list) => list.classList.remove("active"));

    // 添加當前 active
    this.classList.add("active");
    document
      .querySelector(`.manufacturer-list[data-content="${tabId}"]`)
      .classList.add("active");
  });
});
