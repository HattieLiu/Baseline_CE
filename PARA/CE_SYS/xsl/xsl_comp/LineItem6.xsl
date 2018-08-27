<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="LineItemDetails5.xsl"/>
<!--  *********** point <LineItem6> Start ********** -->
	<xsl:template name="LineItem6">
		<xsl:param name="LineItem6"/>
		<xsl:variable name="LineItem6_name" select="name($LineItem6)"/>
		
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$LineItem6_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrdrdLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OrdrdLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		 <xsl:variable name="AccptdLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AccptdLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OutsdngLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OutsdngLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PdgLineItmsTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdgLineItmsTtlAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrdrdTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OrdrdTtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AccptdTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AccptdTtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OutsdngTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OutsdngTtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
			<xsl:variable name="PdgTtlNetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PdgTtlNetAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItem6_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
						<xsl:variable name="LineItemDetails5" select="$LineItem6/Doc:LineItmDtls"/>
						<xsl:call-template name="LineItemDetails5">
							<xsl:with-param name="LineItemDetails5" select="$LineItemDetails5"/>
							<xsl:with-param name="Line3_FullName">
								<xsl:value-of select="substring($LineItem6_name,5)"/>
							</xsl:with-param>
						</xsl:call-template>
						</tr>
						<tr>
							<xsl:element name="TD">	
								 <tr>	
								  	<xsl:element name="TD">								  	    															    
								         <xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								         <xsl:attribute name="height">25</xsl:attribute>							
								         <xsl:value-of select="$OrdrdLineItmsTtlAmtDesc"/>	
								   </xsl:element>
								   
								  <xsl:element name="TD">
								    <xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>							     						    								 
								    <xsl:element name="INPUT">							    								    
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_OrdrdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_OrdrdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:OrdrdLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>		
							 	</xsl:element>	
							 							 	 			
							 <xsl:element name="TD">										    
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AccptdLineItmsTtlAmtDesc"/>
								</xsl:element>
								<xsl:element name="TD">	
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">												   
   								 <xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_AccptdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_AccptdLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:AccptdLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
								</xsl:element>
								</tr>
							</xsl:element>					
						</tr>
						<tr>
							<xsl:element name="TD">		
								<tr>								
								   <xsl:element name="TD">
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$OutsdngLineItmsTtlAmtDesc"/>
								</xsl:element>
								<xsl:element name="TD">
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
								    							   
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_OutsdngLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_OutsdngLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:OutsdngLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
											  
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PdgLineItmsTtlAmtDesc"/>
								</xsl:element>
							<xsl:element name="TD">	
							<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">							   
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_PdgLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_PdgLineItmsTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:PdgLineItmsTtlAmt"/></xsl:attribute>
								</xsl:element>
								</xsl:element>
								</tr> 
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">	
								<tr>		
								<xsl:element name="TD">								  
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$OrdrdTtlNetAmtDesc"/>
								</xsl:element>
								<xsl:element name="TD">
								<xsl:element name="INPUT">							    
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_OrdrdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_OrdrdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:OrdrdTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
												    
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AccptdTtlNetAmtDesc"/>
								</xsl:element>
								<xsl:element name="TD">	
								<xsl:element name="INPUT">							   
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_AccptdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_AccptdTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:AccptdTtlNetAmt"/></xsl:attribute>
								</xsl:element>
								</xsl:element>
								</tr>	
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">	
								<tr>							
								<xsl:element name="TD">		    
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$OutsdngTtlNetAmtDesc"/>
								</xsl:element>
								<xsl:element name="TD">
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>	
								<xsl:element name="INPUT">						    
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_OutsdngTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_OutsdngTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:OutsdngTtlNetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
											   
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PdgTtlNetAmtDesc"/>
								</xsl:element>
								<xsl:element name="TD">
								<xsl:attribute name="style">width:25%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>	
								<xsl:element name="INPUT">							    
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$LineItem6_name"/>_PdgTtlNetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$LineItem6_name"/>_PdgTtlNetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$LineItem6/Doc:PdgTtlNetAmt"/></xsl:attribute>
								</xsl:element>
								</xsl:element>
								</tr>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItem6> end ********** -->
</xsl:stylesheet>
