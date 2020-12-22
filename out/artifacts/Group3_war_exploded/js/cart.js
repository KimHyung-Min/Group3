$(function () {
    let bookCount;
    let totalPrice;

    $('#cartTable').on('click', '.deleteBook', function () {
        // $(this).parent().parent().parent().attr('action','/cart/deleteBook.ing').submit();
        $.ajax({
            type: 'post',
            url: "/cart/deleteBook.ing",
            contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
            data: {
                'isbn': $(this).parent().parent().children('.isbn').val()
            },
            success: (result) => {
                $(this).parent().parent().remove();
            }, error: (error) => {
                console.log(error)
            }
        })
    })

    // 수량 더하기 클릭시
    $('#cartTable').on('click', '.plusCount', function () {
        bookCount = parseInt($(this).parent().children('.quantity').text()) + 1
        totalPrice = bookCount * parseInt($(this).parent().parent().children('.price').text())

        $.ajax({
            type: 'post',
            url: '/cart/modifyCart.ing',
            contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
            data: 'isbn='+$(this).parent().parent().children('.isbn').val()+'&quantity='+bookCount,
            success: () => {
                $(this).parent().children('.quantity').text(bookCount)
                $(this).parent().parent().children('.totalPrice').text(totalPrice)
            }, error: (error) => {
                console.log(error);
            }
        })
    })

    // 수량 빼기 클릭시
    $('#cartTable').on('click', '.minusCount', function () {
        bookCount = parseInt($(this).parent().children('.quantity').text()) - 1
        if(bookCount == 0){
            $(this).parent().parent().remove();
        }
        totalPrice = bookCount * parseInt($(this).parent().parent().children('.price').text())
        $.ajax({
            type: 'post',
            url: '/cart/modifyCart.ing',
            contentType: 'application/x-www-form-urlencoded;charset=utf-8', // 한글 처리
            data: {
                'quantity': bookCount,
                'isbn': $(this).parent().parent().children('.isbn').val()
            },
            success: () => {
                $(this).parent().parent().children('.totalPrice').text(totalPrice)
                $(this).parent().children('.quantity').text(bookCount)
            }, error: (error) => {
                console.log(error);
            }
        })
    })


})  // function(){} END

