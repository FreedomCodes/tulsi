// Copyright 2016 The Tulsi Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation


/// Provides methods to locate the default Bazel instance.
public struct BazelLocator {

  /// NSUserDefaults key for the default Bazel path if one is not found in the opened project's
  /// workspace.
  public static let DefaultBazelURLKey = "defaultBazelURL"

  static func findBazelForWorkspaceRoot(_ workspaceRoot: URL?) -> URL? {
    // TODO(abaire): Fall back to searching the user's path if no default exists.
    return UserDefaults.standard.url(forKey: BazelLocator.DefaultBazelURLKey)
  }

  // MARK: - Private methods

  private init() {
  }
}
