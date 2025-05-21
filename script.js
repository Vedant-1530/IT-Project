let index = 0;

function moveSlide(step) {
    const slides = document.querySelectorAll(".slide");
    index += step;

    if (index < 0) {
        index = slides.length - 1;
    } else if (index >= slides.length) {
        index = 0;
    }

    const slider = document.querySelector(".slider");
    slider.style.transform = `translateX(${-index * 100}%)`;
}

// Auto-slide every 3 seconds
setInterval(() => moveSlide(1), 3000);
