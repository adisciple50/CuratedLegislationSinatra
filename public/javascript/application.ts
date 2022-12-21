window.addEventListener("load",(ev) => {
    const header = document.getElementById('header');
    const top = document.getElementById('top');
    const searchForm = document.getElementById('contentSearch');
    const primaryNav = document.getElementById('primaryNav');
    const footerNav = document.getElementById('footerNav');
    header.remove();
    searchForm.remove();
    primaryNav.remove();
    footerNav.remove();
    top.remove();
});