# KQ-Analyzer
![Logo](/KQ-Analyzer/img/kq-analyzer.png)

Visual analyzer for KQ Analytics.

Retrieves data from the JSON API provided by our [KQ Analytics project](https://github.com/ZetaPhase/KQAnalytics) and creates a visual representation of data in a user-friendly, cross-platform desktop application. KQ Analyzer also uses the data to intelligently create a prediction of future statistics using machine learning (classifaction/clustering)

The analyzer uses R to plot and analyze data and uses Shiny to create the desktop application.


### Features
- Analysis of
  - ID Data.
  - URL Data
  - Tracking ID
  - Timestamp Data
  - Miscellaneous Data (user-agent etc.)
- Machine-learning-based predictions
- URL Authentication (Automate logging in and fetching analyzed data)

### Quick Start For Developers

### A valid installation of [KQ Analytics](https://github.com/ZetaPhase/KQAnalytics) (OSS software) is required to use KQ Analyzer, which works by accessing KQ Analytics' JSON API.

#### Initial download: 
- R
- R Studio (Optional, but very helpful for editing)

#### Required Libraries:
- Curl
- Shiny
- jsonlite
- b64enc
- RCurl
- DiagrammeR

Please visit the setup.txt file for more reference.

#### Sample
A fully functional installation of KQ Analyzer, available to the public, can be found [here](https://apps.zetaphase.io/kq-analyzer/)

(c) 2016, Zetaphase Technologies Inc, All Rights Reserved.

Licensed under the GPLv3.

Created by [xeliot](https://github.com/xeliot) and [0xFireball](https://github.com/0xFireball). This project goes hand-in-hand with one of our other projects, KQ Analytics.
