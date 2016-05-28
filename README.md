# KQ-Analyzer
Visual analyzer for KQ Analytics.

Retrieves data from the JSON API provided by our [KQ Analytics project](https://github.com/ZetaPhase/KQAnalytics) and creates a visual representation of data in a user-friendly, cross-platform desktop application. KQ Analyzer also uses the data to intelligently create a prediction of future statistics using machine learning (classifaction/clustering)

The analyzer uses R to plot and analyze data and uses Shiny to create the desktop application.


### Features
- Analysis of
  - ID Data
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
This is the web version of our [analyzer](https://apps.zetaphase.io/kq-analyzer/) of our website [Zetaphase](https://zetaphase.io).
Visit [here](https://blog.zetaphase.io/) for a tutorial on shiny and KQ Analyzer.

(c) 2016, Zetaphase Technologies Inc, All Rights Reserved.
Licensed under the GPLv3


- Created by xeliot and 0xFireball
