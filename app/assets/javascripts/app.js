function rowClick(row) {
    row.addEventListener("click", (e) => e.target.firstElementChild.click())
}

document.querySelectorAll("tr[data-remote] td").forEach((email) => rowClick(email))