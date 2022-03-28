lua << EOF
package.loaded['aylin'] = nil
package.loaded['aylin.util'] = nil
package.loaded['aylin.colors'] = nil
package.loaded['aylin.theme'] = nil
package.loaded['aylin.functions'] = nil

require('aylin').set()
EOF
