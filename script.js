document.documentElement.classList.add("js");

const pageName = window.location.pathname.split("/").at(-1);
if (pageName === "" || pageName === "index.html") {
  const anchor = window.location.hash.slice(1);
  const legacyPages = {
    education: "about.html",
    research: "work.html",
    experience: "work.html",
    leadership: "about.html",
    interests: "about.html",
    skills: "about.html",
    projects: "projects.html",
    ongoing: "work.html",
  };
  const target = legacyPages[anchor] ||
    (anchor.startsWith("ongoing-") ? "work.html" : null);
  if (target) {
    window.location.replace(`./${target}${anchor === "ongoing" ? "#current-work" : window.location.hash}`);
  }
}

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

window.addEventListener("resize", () => {
  if (window.innerWidth > 960) closeMenu();
});
