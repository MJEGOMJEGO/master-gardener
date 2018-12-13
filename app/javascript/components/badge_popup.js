const initBadgePopup = () => {
  $(document).ready(function() {
    $(".trigger_popup_fricc").click(function(){
      const badgePopupId = $(this).data("target");
       $(`#${badgePopupId}`).show();
    });

    $('.hover_bkgr_fricc, .popupCloseButton').click(function(){
        $('.hover_bkgr_fricc').hide();
    });
  });
};

export { initBadgePopup };
