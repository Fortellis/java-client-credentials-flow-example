<%@ page session="false" import="com.caucho.vfs.*, com.caucho.server.webapp.*" %>

<%-- 
  This is the default start page for the Resin server.

  You can replace it as you wish, the documentation will
  still be available as /resin-doc if it is installed.
  --%>

<%
/**
 * See if the resin-doc webapp is installed
 */
boolean hasResinDoc = false;
boolean hasOrientation = false;

ServletContext docApp = application.getContext("/resin-doc");  

if (docApp != null) {
  String rp = docApp.getRealPath("index.xtp");

  if (rp != null && (new java.io.File(rp)).exists())
    hasResinDoc = true;

  if (hasResinDoc) {
    rp = docApp.getRealPath("orientation.xtp");
    if (rp != null && (new java.io.File(rp)).exists())
      hasOrientation = true;
  }
}
%>

<html>
<head><title>Resin&#174; Default Home Page</title></head>

<body>

<form action="Main" method="POST">
    <p>This is the button to get your token.</p>
    <input type="submit" value="Get Token"></input>
</form>


</body>

</html>
