{ lib
, buildPythonPackage
, fetchPypi
, beautifulsoup4
, dbus-python
, downloader-cli
, pywal
, requests
, simber
}:

buildPythonPackage rec {
  pname = "QuickWall";
  version = "0.0.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1qcayvbcv9jnfkp4q1rpdnlyxhzmg9dsldw8jvkq1f1r6kqpkglz";
  };

  propagatedBuildInputs = [
    beautifulsoup4
    dbus-python
    downloader-cli
    pywal
    requests
    simber
  ];

  # XXX: Remove install_requires from setup(), as it triggers:
  #   Processing ./QuickWall-0.0.5-py3-none-any.whl
  #   ERROR: Could not find a version that satisfies the requirement dbus-python (from quickwall) (from versions: none)
  #   ERROR: No matching distribution found for dbus-python
  patchPhase = "sed -i '/install_requires/d' setup.py";

  # Need to disable checks. There're no tests atm, causing the build to fail.
  doCheck = false;

  meta = with lib; {
    description = "Set latest wallpapers from Unsplash from the commandline";
    homepage = "deepjyoti30.github.io/quickwall";
    license = licenses.mit;
  };
}
