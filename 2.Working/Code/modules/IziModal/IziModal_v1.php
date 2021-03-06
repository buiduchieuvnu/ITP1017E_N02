<link rel="stylesheet" href="<?= AppObject::getBaseFile('libs/iziModal/css/iziModal.css') ?>"/>
<div class="modul_izimodal">
    <div class="izi-modal-iframe"></div>
</div>
<script src="<?= AppObject::getBaseFile('libs/iziModal/js/iziModal.js') ?>"></script>

<script>
    function IZI_IFRAME_MODAL(pUrl, pTitle, pWidth, pHeight, pCloseFn) {
        this.Url = pUrl;
        this.Title = (pTitle !== undefined) ? pTitle : '--';
        this.Width = (pWidth !== undefined) ? pWidth : 600;
        this.Height = (pHeight !== undefined) ? pHeight : 400;;
        
        this.CloseFn = (pCloseFn !== undefined) ? pCloseFn : function(){};

        this.openModal = function () {
            
            $('.izi-modal-iframe').iziModal({
                title: that.Title,
                width: that.Width,
                iframe: true,
                iframeHeight: that.Height,
                iframeURL: that.Url,
                closeButton: true,
                fullscreen: true,
                onFullscreen: function () {},
                onResize: function () {},
                onOpening: function () {},
                onOpened: function () {},
                onClosing: function () {},
                onClosed: function () { 
                    that.CloseFn();
                    //$('.izi-modal-iframe').iziModal('resetContent');
                    $('.izi-modal-iframe').iziModal('destroy');
                },
                afterRender: function () {}
            });
            $('.izi-modal-iframe').iziModal('open');
        };
        
        this.closeModal = function(){
            $('.izi-modal-iframe').iziModal('close');
            
        };
        
        var that = this;
    }

</script>



