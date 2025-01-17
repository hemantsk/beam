/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/widgets.dart';
import 'package:playground/modules/analytics/analytics_event.dart';
import 'package:playground_components/playground_components.dart';
import 'package:provider/provider.dart';

abstract class AnalyticsService {
  AnalyticsEvent? get lastSentEvent;

  static AnalyticsService get(BuildContext context) {
    return Provider.of<AnalyticsService>(context, listen: false);
  }

  void trackSelectSdk(Sdk? oldSdk, Sdk newSdk);
  void trackSelectExample(ExampleBase newExample);
  void trackClickNewExample();
  void trackReset();
  void trackClickToggleTheme(bool isDark);
  void trackOpenShortcutsModal();
  void trackOpenLink(String link);
  void trackClickEnjoyPlayground(bool isEnjoying);
  void trackClickReportIssue();
  void trackClickRunEvent(String exampleName);
  void trackClickCancelRunEvent(String exampleName);
  void trackClickSendFeedback(String feedback);
  void trackRunTimeEvent(String exampleName, int runTimeMs);
}
