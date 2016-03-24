require(['domReady!',"bootstrap", "bootbox","validate"], function (doc,bootstrap, bootbox){
        ;$(function(){


            <!-- ========================================================================
              init
            ========================================================================= -->



            <!-- ========================================================================
              validation
            ========================================================================= -->
            $.validator.addMethod("trim",function(value,element,params){
                if($.trim(value)==""){
                     return false;
                }else{
                     return true;
                }
            });

            $('#form_refund_detail').validate({
                errorPlacement: function(error, element){
                error.appendTo(element.parent().find("span.error"));
            },

            rules : {
                refundPrice: {
                    required : true,
                    trim:true,
                    maxlength: 10,
                    number:true
                },
                refundReason: {
                    required : true,
                    trim:true,
                    maxlength: 100
              },
            },
            messages : {
                refundPrice : {
                    required : '请输入退款金额',
                    trim:'请输入退款金额',
                    maxlength: '请输入正确的退款金额',
                    number:'退款金额是数字'
                },
                refundReason : {
                    required : '请填写退款原因',
                    trim:'请填写退款原因',
                    maxlength: '退款原因在100个字符以内'
                }
            }
            });

            <!-- ========================================================================
                event
             ========================================================================= -->



        });

    <!-- ========================================================================
         function
      ========================================================================= -->

    /**
    * 检查refundType的值，动态更改退款金额
    * 1）refundType = 1 全额退款 -> 退款金额为订单实付金额，退款输入框禁用
    * 2）refundType = 2 部分退款 -> 退款输入框可用
    *
    */
    function checkRefundType(){
    }




})