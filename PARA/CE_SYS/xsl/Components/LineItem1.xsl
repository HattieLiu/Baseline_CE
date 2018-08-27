<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <LineItem1> Start ********** -->
	<xsl:template name="LineItem1">
		<xsl:param name="LineItem1"/>
		<xsl:param name="Line1_FullName"/>
		<xsl:variable name="LineItem1_name" select="name($LineItem1)"/>
		<xsl:variable name="Line1_FullName_fox" select="$Line1_FullName"/>

		<xsl:variable name="goods">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItem1_name"/>
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
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		
		<xsl:variable name="AmtDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Amt'"/>
		</xsl:call-template>
	</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>')</xsl:attribute>
					<xsl:value-of select="$goods"/>
				</a>
			</xsl:element>
		</tr>
		
		<tr>			
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/></xsl:attribute>
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
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:GoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>							
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PrtlShipmntDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_PrtlShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:PrtlShipmnt"/></xsl:attribute>
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
								<xsl:value-of select="$TrnsShipmntDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_TrnsShipmnt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:TrnsShipmnt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LatstShipmntDtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_LatstShipmntDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_LatstShipmntDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:LatstShipmntDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$LineItmsTtlAmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_LineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:LineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TtlNetAmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem1_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem1_name"/>_TtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem1/Doc:TtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						
						<xsl:variable name="LineItemDetails1" select="$LineItem1/Doc:LineItmDtls"/>
						<xsl:call-template name="LineItemDetails1">
							<xsl:with-param name="LineItemDetails1" select="$LineItemDetails1"/>
							<xsl:with-param name="LineItem1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="TransportMeans1Choice" select="$LineItem1/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans1Choice">
							<xsl:with-param name="TransportMeans1Choice" select="$TransportMeans1Choice"/>
							<xsl:with-param name="RtgSummry_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Incoterms1" select="$LineItem1/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms1">
							<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
							<xsl:with-param name="Inco1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Charge12" select="$LineItem1/Doc:FrghtChrgs"/>
						<xsl:call-template name="Charge12">
							<xsl:with-param name="Charge12" select="$Charge12"/>
						</xsl:call-template>
						
						<xsl:variable name="Adjustment1" select="$LineItem1/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment1">
							<xsl:with-param name="Adjustment1" select="$Adjustment1"/>
							<xsl:with-param name="Adjust1_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Tax9" select="$LineItem1/Doc:Tax"/>
						<xsl:call-template name="Tax9">
							<xsl:with-param name="Tax9" select="$Tax9"/>
						</xsl:call-template>
						
						<xsl:variable name="UserDefinedInformation1" select="$LineItem1/Doc:BuyrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="UserDefinedInformation1_double" select="$LineItem1/Doc:SellrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
							<xsl:with-param name="User_FullName">
								<xsl:value-of select="$Line1_FullName_fox"/>_<xsl:value-of select="$LineItem1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>		
	</xsl:template>
	<!--  *********** point <LineItem1> end ********** -->
	</xsl:stylesheet>
