const body = document.body;
const modeSwitch = document.querySelector(".mode-switch");
const modeLabel = document.querySelector(".mode-label");
const savedMode = localStorage.getItem("zgt-mode");

if (savedMode === "paper") {
  body.classList.add("paper-mode");
  modeSwitch.setAttribute("aria-pressed", "true");
  modeSwitch.setAttribute("aria-label", "Switch to ink mode");
  modeLabel.textContent = "Ink";
}

modeSwitch.addEventListener("click", () => {
  const isPaper = body.classList.toggle("paper-mode");
  modeSwitch.setAttribute("aria-pressed", String(isPaper));
  modeSwitch.setAttribute("aria-label", isPaper ? "Switch to ink mode" : "Switch to paper mode");
  modeLabel.textContent = isPaper ? "Ink" : "Paper";
  localStorage.setItem("zgt-mode", isPaper ? "paper" : "ink");
});

document.querySelector("[data-year]").textContent = new Date().getFullYear();

const revealObserver = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("visible");
        revealObserver.unobserve(entry.target);
      }
    });
  },
  { threshold: 0.08 }
);

document.querySelectorAll(".reveal").forEach((element, index) => {
  element.style.transitionDelay = `${Math.min(index % 3, 2) * 90}ms`;
  revealObserver.observe(element);
});
