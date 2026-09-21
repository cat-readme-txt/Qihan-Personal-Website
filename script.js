document.documentElement.classList.add("js");

const toggle = document.querySelector(".menu-toggle");
const navigation = document.querySelector(".site-navigation");
const navLinks = [...navigation.querySelectorAll("a")];

function closeMenu() {
  toggle.setAttribute("aria-expanded", "false");
  toggle.querySelector("span").textContent = "+";
  navigation.classList.remove("is-open");
}

toggle.hidden = false;
toggle.addEventListener("click", () => {
  const expanded = toggle.getAttribute("aria-expanded") !== "true";
  toggle.setAttribute("aria-expanded", String(expanded));
  toggle.querySelector("span").textContent = expanded ? "−" : "+";
  navigation.classList.toggle("is-open", expanded);
});

navLinks.forEach((link) => link.addEventListener("click", closeMenu));
document.addEventListener("keydown", (event) => {
  if (
    event.key === "Escape" &&
    toggle.getAttribute("aria-expanded") === "true"
  ) {
    closeMenu();
    toggle.focus();
  }
});

const sections = [...document.querySelectorAll("main > section[id]")];
let framePending = false;
function updateActiveSection() {
  const maxScroll = document.documentElement.scrollHeight - window.innerHeight;
  const atBottom = maxScroll > 0 && window.scrollY >= maxScroll - 2;
  // The final section may be too short to reach the usual activation threshold.
  const active = atBottom
    ? sections.at(-1)
    : sections.reduce(
        (current, section) =>
          section.getBoundingClientRect().top <= 150 ? section : current,
        sections[0],
      );
  navLinks.forEach((link) => {
    if (link.hash === `#${active.id}`)
      link.setAttribute("aria-current", "location");
    else link.removeAttribute("aria-current");
  });
  framePending = false;
}

window.addEventListener(
  "scroll",
  () => {
    if (!framePending) {
      framePending = true;
      requestAnimationFrame(updateActiveSection);
    }
  },
  { passive: true },
);
window.addEventListener("resize", () => {
  if (window.innerWidth > 620) closeMenu();
  updateActiveSection();
});
updateActiveSection();
