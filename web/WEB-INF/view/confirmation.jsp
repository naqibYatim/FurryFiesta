<%-- 
    Document   : confirmation
    Created on : Nov 5, 2018, 7:27:36 AM
    Author     : Naqib
--%>


            <div id="indexTopColumnConfirmation">
                
                <p id="bigfontConfirmation">
                    Thank you for purchasing our product. We will deliver your item within three days
                </p>
                <p id="normalfontConfirmation">
                    Please keep a note of your confirmation number:
                    <strong>${orderRecord.confirmationNumber}</strong>
                    <br>
                    If you have a query concerning your order, feel free to <a href="#">contact us</a>.
                    <br><br>
                    Thank you for shopping at the Furry Fiesta Pet Food Shop!
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
                        <th style="padding:10px" colspan="3">ORDER SUMMARY</th>
                    </tr>

                    <tr class="tableHeading">
                        <td>product</td>
                        <td>quantity</td>
                        <td>price</td>
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
                        <td colspan="2" id="deliverySurchargeCellLeft"><strong>delivery surcharge:</strong></td>
                        <td id="deliverySurchargeCellRight">RM ${initParam.deliverySurcharge}</td>
                    </tr>

                    <tr class="lightBlueConfirmation">
                        <td colspan="2" id="totalCellLeft"><strong>total:</strong></td>
                        <td id="totalCellRight">RM ${orderRecord.amount}</td>
                    </tr>

                    <tr class="lightBlueConfirmation"><td colspan="3" style="padding: 0 20px"><hr></td></tr>

                    <tr class="lightBlueConfirmation">
                        <td colspan="3" id="dateProcessedRow"><strong>date processed:</strong>
                            ${orderRecord.dateCreated}
                        </td>
                    </tr>
                </table>
                    
                
            </div>
            

            <div id="indexRightColumnConfirmation">
                
                <table id="categoryBoxRightConfirmation" class="detailsTable" >
                    
                    <tr class="headerConfirmation">
                        <th style="padding:10px" colspan="3">DELIVERY ADDRESS</th>
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
                            <strong>email:</strong> ${customer.email}
                            <br>
                            <br>
                            <strong>phone:</strong> ${customer.phone}
                        </td>
                    </tr>
                    
                </table>
            
            </div>


