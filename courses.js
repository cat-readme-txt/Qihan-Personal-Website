const search = document.querySelector("#material-search");
const filter = document.querySelector("#course-filter");
const rows = [...document.querySelectorAll(".material-row")];
const courses = [...document.querySelectorAll(".course-block")];
const count = document.querySelector("#archive-count");
const empty = document.querySelector("#archive-empty");

function updateResults() {
  const query = search.value.trim().toLocaleLowerCase();
  let visible = 0;

  for (const course of courses) {
    const selected = filter.value === "all" || filter.value === course.dataset.course;
    let courseMatches = 0;
    for (const category of course.querySelectorAll(".category-block")) {
      let categoryMatches = 0;
      for (const row of category.querySelectorAll(".material-row")) {
        const matches = selected && row.dataset.search.includes(query);
        row.hidden = !matches;
        if (matches) categoryMatches++;
      }
      category.hidden = categoryMatches === 0;
      courseMatches += categoryMatches;
    }
    course.hidden = courseMatches === 0;
    visible += courseMatches;
  }

  count.textContent = `${visible} of ${rows.length} files shown`;
  empty.hidden = visible !== 0;
}

search.addEventListener("input", updateResults);
filter.addEventListener("change", updateResults);
document.querySelectorAll("[data-course-jump]").forEach((link) => {
  link.addEventListener("click", () => {
    search.value = "";
    filter.value = link.dataset.courseJump;
    updateResults();
  });
});
