<!--  VALIDATORY AND HIDDEN BLOCKS !-->


<script src="Scripts/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="Scripts/jquery-ui.min.js" type="text/javascript"></script>
<script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="Content/Site.css">
<link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css">

<div class="container table-bordered" id="initializeForm" style="display: block">
    <div class="col-lg-6 col-md-6">
        <div class="row">
            <h1>Легко начать..</h1>
        </div>
        <br />
        <div class="row">
            <h3>Задайте размеры комнаты</h3>
        </div>
        <div class="row top-buffer">
            <div class="col-lg-6 col-md-6">
                <div class="col-lg-4 col-md-4">
                    <h4 id="lbl1">Длина:</h4>
                </div>
                <div class="col-lg-7 col-md-7">
                    <input id="txtLength" class="form-control input-xl" />
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="col-lg-4 col-md-4">
                    <h4 id="lbl3">Ширина:</h4>
                </div>
                <div class="col-lg-7 col-md-7">
                    <input id="txtWidth" class="form-control input-xl" />
                </div>
            </div>
        </div>
        <div class="row">
            <div style="color: red; font-size: 16px; visibility: hidden" id="validatorRoom">Некорректные размеры комнаты </div>
        </div>
        <div class="row top-buffer">
            <br />
            <br />
            <br />
            <input type="button" id="btnCreateRoom" value="Создать" class="btn btn-success btn-md" />
        </div>
    </div>
    <div class="col-lg-6 col-md-6 panel-picture table-bordered">
        <div class="row">
            <h3 class="marginLeft-label">Выберите тип комнаты</h3>
        </div>
        <label>
            <input type="radio" name="rbnRooms" value="1" checked="checked" />
            <img src="image/1.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="2" />
            <img src="image/2.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="3" />
            <img src="image/3.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="4" />
            <img src="image/4.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="5" />
            <img src="image/5.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="6" />
            <img src="image/6.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="7" />
            <img src="image/7.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="8" />
            <img src="image/8.png">
        </label>
        <label>
            <input type="radio" name="rbnRooms" value="9" />
            <img src="image/9.png">
        </label>
    </div>
</div>



<!-- PAGE 2 !-->
<div class="container table-bordered" id="designForm" style="display: none">
    <div class="col-lg-12 col-md-12">
        <div class="row">
            <div class="col-lg-2 col-md-2">
                <div class="row">
                    <h1>Мебель</h1>
                </div>

                <div class="row">
                    <h3>Размер мебели</h3>
                </div>
                <div class="row">
                    <h4>Ширина</h4>
                </div>
                <div class="row">
                    <input type="text" id="lblWidthRoom" class="form-control input-xl" />
                </div>
                <div class="row">
                    <h4>Длина</h4>
                </div>
                <div class="row">
                    <input type="text" id="lblLengthRoom" class="form-control input-xl" />
                </div>
                <div class="row top-buffer">
                    <br />
                    <input type="button" id="btnCreateStaff" value="Готово" class="btn btn-success" onclick="saveStaff(that)" />
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <div class="row">
                    <label id="widthRoom" class="labelSize"></label>
                </div>
                <div class="room">
                </div>
            </div>
            <div class="col-lg-1 col-md-1">
                <label id="heightRoom" class="labelSize"></label>
            </div>
        </div>
        <div class="row top-buffer">
            <br />
            <input type="button" id="btnNewRoom" value="Выбрать другую комнату" class="btn btn-danger btn-md pull-right" />
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Свойства</h4>
            </div>
            <div class="modal-body">
                <div class="row top-buffer">
                    <div class="col-lg-4 col-md-4">Название мебели</div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" id="currNameStaff" class="form-control" />
                    </div>
                </div>
                <div class="row top-buffer">
                    <div class="col-lg-4 col-md-4">Ширина</div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" id="currWidthStaff" class="form-control" />
                    </div>
                </div>
                <div class="row top-buffer">
                    <div class="col-lg-4 col-md-4">Длина</div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" id="currLengthStaff" class="form-control" />
                    </div>
                </div>
                <div class="row top-buffer">
                    <div class="col-lg-4 col-md-4">Угол поворота</div>
                    <div class="col-lg-6 col-md-6">
                        <input type="text" id="currRotateStaff" class="form-control" />
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="saveStaff(that)">Сохранить изменения</button>
            </div>
        </div>
    </div>
</div>


<script src="image/big/1.png" type="image/png"></script>
<script src="image/big/2.png" type="image/png"></script>
<script src="image/big/3.png" type="image/png"></script>
<script src="image/big/4.png" type="image/png"></script>
<script src="image/big/5.png" type="image/png"></script>
<script src="image/big/6.png" type="image/png"></script>
<script src="image/big/7.png" type="image/png"></script>
<script src="image/big/8.png" type="image/png"></script>
<script src="image/big/9.png" type="image/png"></script>

<script>
    var arrBrightColor = [];
    $(document).ready(function () {
        $('#btnCreateRoom').on('click', createRoom);
        $('#btnNewRoom').on('click', createToInitializedRoom);
        $('#btnCreateStaff').on('click', addStaff);
        initializeBrightColor();
    });

    var pxRelation = 0;
    function createToInitializedRoom() {
        location.reload();
    }

    function createRoom() {
        if (!isNaN(parseFloat($('#txtLength').val())) && !isNaN(parseFloat($('#txtWidth').val())) && $('#txtLength').val() > 0 && $('#txtWidth').val() > 0) {
            $('#validatorRoom').css('display', 'none');
            $('#initializeForm').css('display', 'none');
            setTimeout(function () {
                $('#designForm').css('display', 'block');


                $('#widthRoom').text($('#txtWidth').val());
                $('#heightRoom').text($('#txtLength').val());

                var widthRoom = $('#widthRoom').text();
                var heightRoom = $('#heightRoom').text();
                var corellation = heightRoom / widthRoom;
                pxRelation = $('.room').width() / $('#widthRoom').text();

                $('.room').height($('.room').width() * corellation);
                $('#widthRoom').addClass('widthRoomLabel');
                $('#heightRoom').css({ 'margin-top': $('.room').parent().height() / 2 });
                if (parseFloat($('[name=rbnRooms]:checked').val()) >= 1 && parseFloat($('[name=rbnRooms]:checked').val()) <= 9) {
                    $('.room').css('background-image', 'url(../image/big/' + $('[name=rbnRooms]:checked').val() + '.png)');
                }
            }, 20);
        }
        else {
            $('#validatorRoom').css('visibility', 'visible');
        }
    }

    function initializeBrightColor() {
        arrBrightColor.push('#FBCEB1', '#7FFFD4', '#9F2B68', '#9966CC', '#44944A', '#FAE7B5', '#BDECB6', '#003153', '#2A8D9C', '#1560BD',
            '#5D3954', '#18FF51', '#B718FF', '#E46C92');
    }

    function randomColor() {
        // return arrBrightColor[Math.floor((Math.random() * arrBrightColor.length-1) + 0)];
        return arrBrightColor.pop();
    }

    var heightMax = parseFloat(0);
    var step = 0;
    var that;
    function addStaff() {
        if (parseFloat($('#lblLengthRoom').val(), 2) > parseFloat($('#heightRoom').text(), 2) || parseFloat($('#lblWidthRoom').val(), 2) > parseFloat($('#widthRoom').text(), 2)) {
            alert('Мебель больше комнаты');
            return;
        }
        if (!$('#lblLengthRoom').val() || !$('#lblWidthRoom').val()) {
            alert("Для добавления мебели должны быть заданы ширина и длина");
            return;
        }
        if ($('#lblLengthRoom').val() < 0 || $('#lblWidthRoom').val() < 0) {
            alert("Для добавления мебели ширина и длина должны быть положительными");
            return;
        }
        if (isNaN(parseFloat($('#lblLengthRoom').val())) || isNaN(parseFloat($('#lblWidthRoom').val()))) {
            alert("Размеры для мебели должны быть числами");
            return;
        }

        var heightStaff = parseFloat($('#lblLengthRoom').val(), 2) / parseFloat($('#heightRoom').text(), 2) * parseFloat($('.room').height(), 2);
        var widthStaff = parseFloat($('#lblWidthRoom').val(), 2) / parseFloat($('#widthRoom').text(), 2) * parseFloat($('.room').width(), 2);

        var newStaff = $('<div id = "staff" style="background-color:' + randomColor() + '">Название предмета<div>')
        newStaff.width(widthStaff);
        newStaff.height(heightStaff);

        $(newStaff).draggable({
            containment: $('.room'),
            cursor: 'move',
            stack: '#staff'
        });
        $('.room').append(newStaff);
        newStaff.css('top', -1 * heightMax + 2);
        heightMax = parseFloat(heightMax) + heightStaff;

        $(newStaff).dblclick(function () {
            that = this;
            $('#currNameStaff').val($(this).text());
            $('#currWidthStaff').val(parseFloat(parseFloat($(this).height()) / pxRelation).toFixed(1));
            $('#currLengthStaff').val(parseFloat(parseFloat($(this).width()) / pxRelation).toFixed(1));
            $('.modal').modal();
            $('#currRotateStaff').val('');
        });
        step = step + 1;
    };

    function saveStaff(that) {
            $(that).text($('#currNameStaff').val());
            $(that).height($('#currWidthStaff').val() * pxRelation);
            $(that).width($('#currLengthStaff').val() * pxRelation);
            if ($('#currRotateStaff').val()) $(that).rotate($('#currRotateStaff').val());
    };

    jQuery.fn.rotate = function (degrees) {
        $(this).css({
            '-webkit-transform': 'rotate(' + degrees + 'deg)',
            '-moz-transform': 'rotate(' + degrees + 'deg)',
            '-ms-transform': 'rotate(' + degrees + 'deg)',
            'transform': 'rotate(' + degrees + 'deg)'
        });
    };
</script>
