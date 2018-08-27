<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
    <xsl:include href="Quantity2.xsl"/>
    <xsl:include href="PercentageTolerance1.xsl"/>
    <xsl:include href="UnitPrice8.xsl"/>
    <xsl:include href="ProductIdentifier2Choice.xsl"/>
    <xsl:include href="ProductCharacteristics1Choice.xsl"/>
    <xsl:include href="ProductCategory1Choice.xsl"/>
    
<!--  *********** point <LineItemDetails4> Start ********** -->
	<xsl:template name="LineItemDetails4">
		<xsl:param name="LineItemDetails4"/>
		<xsl:param name="LineItemDetails4_parent"/>
		<xsl:param name="LineItem1_FullName"/>
		<xsl:param name="stmt1" select="Doc:LineItmDtls"/>
		<xsl:variable name="LineItemDetails4_name" select="name($LineItemDetails4)"/>
		<xsl:variable name="LineItemDetails4_pname" select="$LineItemDetails4_parent"/>
		<xsl:variable name="LineItem1_FullName_fox" select="$LineItem1_FullName"/>
		<xsl:variable name="LineItmDtlsDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItemDetails4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LineItmId'"/>
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
		<xsl:variable name="AmtDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Amt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/></xsl:attribute>
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
											<xsl:value-of select="$LineItmIdDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_LineItmId</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_LineItmId</xsl:attribute>
												<xsl:attribute name="class">W_2</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails4/Doc:LineItmId"/></xsl:attribute>
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
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">W_35</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails4/Doc:PdctNm"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:value-of select="$PdctOrgnDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">W_2</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails4/Doc:PdctOrgn"/></xsl:attribute>
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
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_PdctNm</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails4/Doc:LatstShipmntDt"/></xsl:attribute>
											</xsl:element>
										</xsl:element>
									</tr>
									<tr>
										<xsl:element name="TD">
											<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
											<xsl:attribute name="height">25</xsl:attribute>
											<xsl:attribute name="nowrap">true</xsl:attribute>
											<xsl:value-of select="$TtlAmtDesc"/>
										</xsl:element>
										<xsl:element name="TD">
											<xsl:element name="INPUT">
												<xsl:attribute name="type">text</xsl:attribute>
												<xsl:attribute name="name"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="id"><xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>_TtlAmt</xsl:attribute>
												<xsl:attribute name="class">CHAR_P</xsl:attribute>
												<xsl:attribute name="length">35</xsl:attribute>
												<xsl:attribute name="maxlength">35</xsl:attribute>
												<xsl:attribute name="value"><xsl:value-of select="$LineItemDetails4/Doc:TtlAmt"/></xsl:attribute>
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
						<xsl:variable name="Quantity2" select="$LineItemDetails4/Doc:Qty"/>
						<xsl:call-template name="Quantity2">
							<xsl:with-param name="Quantity2" select="$Quantity2"/>
							<xsl:with-param name="Quantity2_parent">
                                  		<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>
							</xsl:with-param>
							<xsl:with-param name="Quantity2_qname">Quantity</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PercentageTolerance1" select="$LineItemDetails4/Doc:QtyTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1"/>
							<xsl:with-param name="PercentageTolerance1_parent">
							        <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="UnitPrice8_one" select="$LineItemDetails4/Doc:UnitPric"/>
						<xsl:call-template name="UnitPrice8">
							<xsl:with-param name="UnitPrice8" select="$UnitPrice8_one"/>
							<xsl:with-param name="UnitPrice8_parent">
							       <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PercentageTolerance1_double" select="$LineItemDetails4/Doc:PricTlrnce"/>
						<xsl:call-template name="PercentageTolerance1">
							<xsl:with-param name="PercentageTolerance1" select="$PercentageTolerance1_double"/>
							<xsl:with-param name="PercentageTolerance1_parent">
							      <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItemDetails4/Doc:PdctIdr">
						<xsl:variable name="ProductIdentifier2Choice" select="."/>
						<xsl:call-template name="ProductIdentifier2Choice">
							<xsl:with-param name="ProductIdentifier2Choice" select="$ProductIdentifier2Choice"/>
							<xsl:with-param name="ProductIdentifier2Choice_parent">
							    <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails4/Doc:PdctChrtcs">
						<xsl:variable name="ProductCharacteristics1Choice" select="."/>
						<xsl:call-template name="ProductCharacteristics1Choice">
							<xsl:with-param name="ProductCharacteristics1Choice" select="$ProductCharacteristics1Choice"/>
							<xsl:with-param name="ProductCharacteristics1Choice_parent">
                                 <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>							
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails4/Doc:PdctCtgy">
						<xsl:variable name="ProductCategory1Choice" select="."/>
						<xsl:call-template name="ProductCategory1Choice">
							<xsl:with-param name="ProductCategory1Choice" select="$ProductCategory1Choice"/>
							<xsl:with-param name="ProductCategory1Choice_parent">
                                 <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>					
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="TransportMeans1Choice" select="$LineItemDetails4/Doc:RtgSummry"/>
						<xsl:call-template name="TransportMeans1Choice">
							<xsl:with-param name="TransportMeans1Choice" select="$TransportMeans1Choice"/>
							<xsl:with-param name="RtgSummry_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$LineItemDetails4/Doc:Incotrms">
						<xsl:variable name="Incoterms1" select="."/>
						<xsl:call-template name="Incoterms1">
							<xsl:with-param name="Incoterms1" select="$Incoterms1"/>
							<xsl:with-param name="Inco1_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>
							</xsl:with-param>
							<xsl:with-param name="Incoterms1_parent">
							    <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$LineItemDetails4/Doc:Adjstmnt">
						<xsl:variable name="Adjustment3" select="."/>
						<xsl:call-template name="Adjustment3">
							<xsl:with-param name="Adjustment3" select="$Adjustment3"/>
							<xsl:with-param name="Adjust1_FullName">
								<xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>
							</xsl:with-param>
							<xsl:with-param name="Adjustment3_parent">
							     <xsl:value-of select="$LineItem1_FullName_fox"/>_<xsl:value-of select="$LineItemDetails4_name"/>_<xsl:value-of select="$LineItemDetails4_pname"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemDetails4> end ********** -->
</xsl:stylesheet>
