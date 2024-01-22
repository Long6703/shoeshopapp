var men = document.getElementById("men");
var women = document.getElementById("women");
var kid = document.getElementById("kid");
var menTable = document.getElementById("men-table");
var womenTable = document.getElementById("women-table");
var kidTable = document.getElementById("kid-table");

// Định nghĩa hàm để hiển thị bảng con tương ứng với nút được nhấn
function showTable(button, table) {
    // Ẩn tất cả các bảng con
    menTable.classList.remove("active");
    womenTable.classList.remove("active");
    kidTable.classList.remove("active");
    // Hiển thị bảng con được chọn
    table.classList.add("active");
    // Bỏ chọn tất cả các nút
    men.classList.remove("active");
    women.classList.remove("active");
    kid.classList.remove("active");
    // Chọn nút được nhấn
    button.classList.add("active");
}

// Gán sự kiện cho các nút
// Tiếp tục viết code JavaScript
men.onclick = function () {
    // Hiển thị bảng size guide cho men
    showTable(men, menTable);
};

women.onclick = function () {
    // Hiển thị bảng size guide cho women
    showTable(women, womenTable);
};

kid.onclick = function () {
    // Hiển thị bảng size guide cho kid
    showTable(kid, kidTable);
};
document.getElementById("closeButton").addEventListener("click", function () {
    // Quay lại trang trước
    window.history.back();
});