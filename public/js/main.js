$(document).ready(() => {
    if (window.innerWidth < 430) {
        var elm = document.querySelectorAll("#fix-nav");
        var brand = document.querySelector('.navbar-brand')
        var mainNav =  document.querySelector('#logo')
        mainNav.append(brand)
        document.querySelector('#desk-logo').remove()
        elm.forEach(elm => {
            elm.classList.remove("flex-row");
            elm.classList.add("flex-folumn");
            elm.classList.remove("justify-content-between");
            elm.classList.remove("justify-content-start");
            elm.classList.add("justify-content-center");
        });
        var btn = document.querySelector("#search-btn");
        btn.classList.add("w-100");
    }

    if(window.innerWidth <= 768){
        document.querySelector("#mega-fix-mobile").classList.remove('w-100');
        document.querySelectorAll('.cat-sub').forEach(elm => elm.remove())
    }
});

$(document).on("click", ".dropdown-menu", function(e) {
    e.stopPropagation();
});


