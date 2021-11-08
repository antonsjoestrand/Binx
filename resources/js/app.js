require("./bootstrap");

// SCROLL ELEMENT

let tl = gsap.timeline({ repeat: -1 });

tl.from(".dot", {
    duration: 0.8,
    y: -12,
    opacity: 0.2,
    ease: "none",
});

tl.to(".dot", {
    duration: 0.8,
    y: 12,
    opacity: 1,
    ease: Elastic.easeOut.config(1.1, 1),
});

tl.from(".dot", {
    duration: 0.8,
    y: 12,
    opacity: 1,
    ease: "none",
});

tl.to(
    ".dot",
    {
        duration: 0.8,
        y: -12,
        opacity: 0.2,
        ease: "none",
    },
    "-=0.8"
);

// COLLECTION TRIGGERS

gsap.from("#basket-hoop", {
    scrollTrigger: {
        trigger: ".collection",
    },
    duration: 2,
    x: -500,
    opacity: 0,
});

gsap.from(".title", {
    scrollTrigger: {
        trigger: ".collection",
    },
    duration: 2,
    opacity: 0,
    y: -100,
    ease: Bounce.easeOut,
    delay: 1.5,
});
