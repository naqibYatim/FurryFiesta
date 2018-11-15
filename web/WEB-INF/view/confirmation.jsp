<%-- 
    Document   : confirmation
    Created on : Nov 5, 2018, 7:27:36 AM
    Author     : Naqib
--%>


            <div id="indexTopColumnConfirmation">
                
                <p id="bigfontConfirmation">
                    <fmt:message key='introText1confirm'/>
                </p>
                <p id="normalfontConfirmation">
                    <fmt:message key='introText2confirm'/>
                    <strong>${orderRecord.confirmationNumber}</strong>
                    <br>
                    <fmt:message key='introText3confirm'/>
                    <br><br>
                    <fmt:message key='introText5confirm'/>
                </p>
                
            </div>
            
            <div id="indexLeftColumnConfirmation">
                
                    <!--<table id="categoryBoxLeftConfirmation" class="detailsTable" >
                        <tr class="headerConfirmation">
                            <th style="padding:10px">[ order summary table ]</th>
                        </tr>
                    </table>-->
                
                
                <table id="categoryBoxLeftConfirmation" class="detailsTable">
                    <tr class="headerConfirmation">
                        <th style="padding:10px" colspan="3"><fmt:message key='tableTextsummaryconfirm'/></th>
                    </tr>

                    <tr class="tableHeading">
                        <td><fmt:message key='tableTextproductconfirm'/></td>
                        <td><fmt:message key='tableTextquantityconfirm'/></td>
                        <td><fmt:message key='tableTextpriceconfirm'/></td>
                    </tr>

                    <c:forEach var="orderedProduct" items="${orderedProducts}" varStatus="iter">

                        <tr class="${((iter.index % 2) != 0) ? 'lightBlueConfirmation' : 'whiteConfirmation'}">
                            <td>${products[iter.index].name}</td>
                            <td class="quantityColumn">
                                ${orderedProduct.quantity}
                            </td>
                            <td class="confirmationPriceColumn">
                                RM ${products[iter.index].price * orderedProduct.quantity}
                            </td>
                        </tr>

                    </c:forEach>

                    <tr class="lightBlueConfirmation"><td colspan="3" style="padding: 0 20px"><hr></td></tr>

                    <tr class="lightBlueConfirmation">
                        <td colspan="2" id="deliverySurchargeCellLeft"><strong><fmt:message key='tableTextsurchargeconfirm'/></strong></td>
                        <td id="deliverySurchargeCellRight">RM ${initParam.deliverySurcharge}</td>
                    </tr>

                    <tr class="lightBlueConfirmation">
                        <td colspan="2" id="totalCellLeft"><strong>total:</strong></td>
                        <td id="totalCellRight">RM ${orderRecord.amount}</td>
                    </tr>

                    <tr class="lightBlueConfirmation"><td colspan="3" style="padding: 0 20px"><hr></td></tr>

                    <tr class="lightBlueConfirmation">
                        <td colspan="3" id="dateProcessedRow"><strong><fmt:message key='tableTextdateconfirm'/></strong>
                            ${orderRecord.dateCreated}
                        </td>
                    </tr>
                </table>
                    
                
            </div>
            

            <div id="indexRightColumnConfirmation">
                
                <table id="categoryBoxRightConfirmation" class="detailsTable" >
                    
                    <tr class="headerConfirmation">
                        <th style="padding:10px" colspan="3"><fmt:message key='tableTextaddressconfirm'/></th>
                    </tr>
                    
                    <tr>
                        <td colspan="3" class="lightBlueConfirmation">
                            ${customer.name}
                            <br>
                            <br>
                            ${customer.address}
                            <!--<br>
                            <br>
                            Poscode: ${customer.cityRegion}-->
                            <br>
                            <br>
                            <hr>
                            <br>
                            <strong><fmt:message key='tableTextemailconfirm'/></strong> ${customer.email}
                            <br>
                            <br>
                            <strong><fmt:message key='tableTextphoneconfirm'/></strong> ${customer.phone}
                        </td>
                    </tr>
                    
                </table>
            
            </div>


