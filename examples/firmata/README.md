# Max Firmata

Firmata is a generic protocol for communicating with microcontrollers
from software on a host computer. It is intended to work with
any host computer software package.

Basically, it is a way to standard for passing information back and forth between your Arduino and another piece of software.

MaxFirmata is an implementation of the firmata for MaxMSP.

## Install

### Max

To install the firmata external for max, download the [latest release](https://github.com/NullMember/MaxFirmata/releases).

At time of writing there is not a version of the firmata available via the package manager. Instead you will need to

1. Download and unzip the Firmata
2. Go to your `Max` folder
    - by default Max creates a folder in your documents folder. If you store patches elsewhere, feel free to use that.
3. In the `Max` folder, create a folder named `externals`.
4. place the `maxfirmata` folder in your `externals` folder
5. In Max, select the [`Options` > `File Preferences...` menu](https://docs.cycling74.com/max8/vignettes/file_preferences_window?q=file%20preferences)

![`Options` > `File Preferences...`](https://docs.cycling74.com/static/max8/images/b354516548149c408746ce3c52e54d92.png)

6. Add your `externals` folder
7. `maxfirmata` should now be an available object. Try creating one. You may need to restart Max.

#### Documentation

There is a [reference page](https://docs.cycling74.com/max8/vignettes/docrefpages_opening) as part of the package.

### Arduino

[The standard firmata for Arduino](https://www.arduino.cc/en/Reference/Firmata) should be available without any extra download. Open Arduino IDE, and navigate to

`File` > `Examples` > `Firmata` > `StandardFirmata`
