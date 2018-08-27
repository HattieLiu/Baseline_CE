<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
     <xsl:include href="LineItemDetails4.xsl"/>
     <xsl:include href="TransportMeans1Choice.xsl"/>
     <xsl:include href="Incoterms1.xsl"/>
     <xsl:include href="Charge12.xsl"/>
     <xsl:include href="Adjustment3.xsl"/>
     <xsl:include href="Tax13.xsl"/>
     <xsl:include href="UserDefinedInformation1.xsl"/>
     
<!--  *********** point <LineItem5> Start ********** -->
	<xsl:template name="LineItem5">
		<xsl:param name="LineItem5"/>
		<xsl:param name="Line1_FullName"/>
		<xsl:variable name="LineItem5_name" select="name($LineItem5)"/>
		<xsl:variable name="Line1_FullName_fox" select="$Line1_FullName"/>
		<xsl:variable name="goods">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItem5_name"/>
			</xsl:call-template>
		</xsl:variable>
		
		     <xsl:variable name="goodsDesc">
			      <xsl:call-template name="getFldDesc">
				     <xsl:with-param name="FldId" select="'Doc:GoodsDesc'"/>
			      </xsl:call-template>
		    </xsl:variable>
		     <xsl:variable name="PrtlShipmntDesc">
			     <xsl:call-template name="getFldDesc">
				   <xsl:with-param name="FldId" select="'Doc:PrtlShipmnt'"/>
			    </xsl:call-template>
		      </xsl:variable>
		      <xsl:variable name="TrnsShipmntDesc">
			      <xsl:call-template name="getFldDesc">
				      <xsl:with-param name="FldId" select="'Doc:TrnsShipmnt'"/>
			      </xsl:call-template>
		     </xsl:variable>
		      <xsl:variable name="LatstShipmntDtDesc">
			         <xsl:call-template name="getFldDesc">
				         <xsl:with-param name="FldId" select="'Doc:LatstShipmntDt'"/>
			           </xsl:call-template>
			      </xsl:variable>
			<xsl:variable name="LineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/>')</xsl:attribute>
					<xsl:value-of select="$goods"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$goodsDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem5_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem5_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem5/Doc:GoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$PrtlShipmntDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem5_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem5_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem5/Doc:PrtlShipmnt"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="img">
									<xsl:attribute name="src">horizontal.gif</xsl:attribute>
									<xsl:attribute name="width">130</xsl:attribute>
									<xsl:attribute name="height">0</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$TrnsShipmntDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem5_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem5_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem5/Doc:TrnsShipmnt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$LatstShipmntDtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem5_name"/>_LatstShipmntDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem5_name"/>_LatstShipmntDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem5/Doc:LatstShipmntDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$LineItmsTtlAmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem5_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem5_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem5/Doc:LineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$TtlNetAmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem5_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem5_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem5/Doc:TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="LineItemDetails4" select="$LineItem5/Doc:LineItmDtls"/>
						<xsl:call-template name="LineItemDetails4">
							<xsl:with-param name="LineItemDetails4" select="$LineItemDetails4"/>
							<xsl:with-param name="LineItem5_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="TransportMeans1Choice" select="$LineItem5/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans1Choice">
							<xsl:with-param name="TransportMeans1Choice" select="$TransportMeans1Choice"/>
							<xsl:with-param name="RtgSummry_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Incoterms1" select="$LineItem5/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms1">
							<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
							<xsl:with-param name="Inco1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Charge12" select="$LineItem5/Doc:FrghtChrgs"/>
						<xsl:call-template name="Charge12">
							<xsl:with-param name="Charge12" select="$Charge12"/>
						</xsl:call-template>
						<xsl:variable name="Adjustment3" select="$LineItem5/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment3">
							<xsl:with-param name="Adjustment3" select="$Adjustment3"/>
							<xsl:with-param name="Adjust1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Tax13" select="$LineItem5/Doc:Tax"/>
						<xsl:call-template name="Tax13">
							<xsl:with-param name="Tax13" select="$Tax13"/>
						</xsl:call-template>
						<xsl:variable name="UserDefinedInformation1" select="$LineItem5/Doc:BuyrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="UserDefinedInformation1_double" select="$LineItem5/Doc:SellrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem5_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem5> end ********** -->
</xsl:stylesheet>
