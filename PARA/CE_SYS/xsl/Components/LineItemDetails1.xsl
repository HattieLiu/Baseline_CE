<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <LineItemDetails1> Start ********** -->
	<xsl:template name="LineItemDetails1">
		<xsl:param name="LineItemDetails1"/>
		<xsl:param name="LineItem1_FullName"/>
		<xsl:variable name="LineItemDetails1_name" select="name($LineItemDetails1)"/>
		<xsl:variable name="LineItem1_FullName_fox" select="$LineItem1_FullName"/>
		
		<xsl:variable name="LineItmDtlsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItemDetails1_name"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="LineItmNbDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LineItmNb'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PdctNmDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PdctNm'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="PdctOrgnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:PdctOrgn'"/>
			</xsl:call-template>
		</xsl:variable>

		<xsl:variable name="LatstShipmntDtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:LatstShipmntDt'"/>
			</xsl:call-template>
		</xsl:variable>
			<xsl:variable name="TtlAmtDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:TtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>

		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="$LineItmDtlsDesc"/>
				</a>
			</xsl:element>
		</tr>		
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$LineItmNbDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_LineItmNb</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_LineItmNb</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:LineItmNb"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$PdctNmDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:PdctNm"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">
										<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$PdctOrgnDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:PdctOrgn"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
										<xsl:element name="TD">
										<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$LatstShipmntDtDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:LatstShipmntDt"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">	
										<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:value-of select="$TtlAmtDesc"/>
										</xsl:element>
										<xsl:element name="TD">	
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails1_name"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails1_name"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails1/Doc:TtlAmt"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
										<xsl:element name="TD">	
										</xsl:element>
										<xsl:element name="TD">	
										</xsl:element>
									</tr>
								</table>
							</xsl:element>
						</tr>
						
						<xsl:variable name="Quantity1" select="$LineItemDetails1/Doc:Qty"/>
						<xsl:call-template name="Quantity1">
							<xsl:with-param name="Quantity1" select="$Quantity1"/>
						</xsl:call-template>
						
						<xsl:variable name="PercentageTolerance1" select="$LineItemDetails1/Doc:QtyTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1"/>
						</xsl:call-template>
						
						<xsl:variable name="UnitPrice7_one" select="$LineItemDetails1/Doc:UnitPric"/>
						<xsl:call-template name="UnitPrice7">
							<xsl:with-param name="UnitPrice7" select="$UnitPrice7_one"/>
						</xsl:call-template>
						
						<xsl:variable name="PercentageTolerance1_double" select="$LineItemDetails1/Doc:PricTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1_double"/>
						</xsl:call-template>

						<xsl:variable name="ProductIdentifier1Choice" select="$LineItemDetails1/Doc:PdctIdr"/>
						<xsl:call-template name="ProductIdentifier1Choice">
							<xsl:with-param name="ProductIdentifier1Choice" select="$ProductIdentifier1Choice"/>
						</xsl:call-template>

						<xsl:variable name="ProductCharacteristics1Choice" select="$LineItemDetails1/Doc:PdctChrtcs"/>
						<xsl:call-template name="ProductCharacteristics1Choice">
							<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
						</xsl:call-template>
						
						<xsl:variable name="ProductCategory1Choice" select="$LineItemDetails1/Doc:PdctCtgy"/>
						<xsl:call-template name="ProductCategory1Choice">
							<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
						</xsl:call-template>

						<xsl:variable name="TransportMeans1Choice" select="$LineItemDetails1/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans1Choice">
							<xsl:with-param name="TransportMeans1Choice" select="$TransportMeans1Choice"/>
							<xsl:with-param name="RtgSummry_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Incoterms1" select="$LineItemDetails1/Doc:Incotrms"/>
						<xsl:call-template name="Incoterms1">
							<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
							<xsl:with-param name="Inco1_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						
						<xsl:variable name="Adjustment1" select="$LineItemDetails1/Doc:Adjstmnt"/>
						<xsl:call-template name="Adjustment1">
							<xsl:with-param name="Adjustment1" select="$Adjustment1"/>
							<xsl:with-param name="Adjust1_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails1> end ********** -->
		</xsl:stylesheet>