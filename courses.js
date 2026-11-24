const search = document.querySelector("#material-search");
const filter = document.querySelector("#course-filter");
const results = document.querySelector("#course-results");
const courses = results.querySelectorAll(".course-block");
const count = document.querySelector("#archive-count");
const plan = document.querySelector(".plan-details");

function fileCount(matches) {
  return `${matches} ${matches === 1 ? "file" : "files"}`;
}

function updateResults() {
  const query = search.value.trim().toLowerCase();
  const terms = query ? query.split(/\s+/) : [];
  const filtering = Boolean(query) || filter.value !== "all";
  let visible = 0;

  for (const course of courses) {
    const selected = filter.value === "all" || filter.value === course.dataset.course;
    let courseMatches = 0;
    for (const category of course.querySelectorAll(".category-block")) {
      let categoryMatches = 0;
      for (const row of category.querySelectorAll(".material-row")) {
        const matches = selected && terms.every((term) => row.dataset.search.includes(term));
        row.hidden = !matches;
        if (matches) categoryMatches++;
      }
      category.hidden = categoryMatches === 0;
      category.open = Boolean(query) && !category.hidden;
      category.querySelector(".archive-files").textContent = fileCount(categoryMatches);
      courseMatches += categoryMatches;
    }
    course.hidden = courseMatches === 0;
    course.open = filtering && !course.hidden;
    course.querySelector(".archive-files").textContent = fileCount(courseMatches);
    visible += courseMatches;
  }

  results.hidden = visible === 0;
  if (!visible) count.textContent = "No materials match this search.";
  else if (filtering) count.textContent = `${fileCount(visible)} found`;
  else count.textContent = "";
}

function openLinkedSection() {
  const target = document.getElementById(window.location.hash.slice(1));
  if (target?.id === "study-plan") plan.open = true;
  if (!target?.matches(".course-block")) return;
  if (target.hidden) {
    search.value = "";
    filter.value = "all";
    updateResults();
  }
  target.open = true;
}

search.addEventListener("input", updateResults);
filter.addEventListener("change", updateResults);
document.querySelector('a[href="#study-plan"]').addEventListener("click", () => {
  plan.open = true;
});
window.addEventListener("hashchange", openLinkedSection);
document.querySelector(".archive-controls").hidden = false;
updateResults();
openLinkedSection();
