import hashlib
import binascii
import evernote.edam.userstore.constants as UserStoreConstants
import evernote.edam.type.ttypes as Types

from evernote.api.client import EvernoteClient
from evernote.edam.notestore.ttypes import NoteFilter, NotesMetadataResultSpec

auth_token = "S=s229:U=1c7ea93:E=1543bd9d2b5:C=14ce428a438:P=1cd:A=en-devtoken:V=2:H=113b4d49b7a65dc3e1caee5df19033fa"

if auth_token == "your developer token":
    print "Please fill in your developer token"
    print "To get a developer token, visit " \
        "https://sandbox.evernote.com/api/DeveloperToken.action"
    exit(1)
	
client = EvernoteClient(token=auth_token, sandbox=False)

user_store = client.get_user_store()

version_ok = user_store.checkVersion(
    "Evernote EDAMTest (Python)",
    UserStoreConstants.EDAM_VERSION_MAJOR,
    UserStoreConstants.EDAM_VERSION_MINOR
)
print "Is my Evernote API version up to date? ", str(version_ok)
print ""
if not version_ok:
    exit(1)

note_store = client.get_note_store()

tags = note_store.listTags()
print "Found", len(tags), "tags:"

allTags = []
for Tag in tags:
	allTags.append(Tag.name)
	
print allTags

notebooks = note_store.listNotebooks()
print "Found ", len(notebooks), " notebooks:"

notebookid = []
for notebook in notebooks:
	notebookid.append(notebook.guid)

print notebookid[0]

filter = NoteFilter()
filter.notebookGuid = notebookid[0]

filter.ascending = False
 
spec = NotesMetadataResultSpec()
spec.includeTitle = True

ourNoteList = note_store.findNotesMetadata(auth_token, filter, 0, 100, spec)
 
for note in ourNoteList.notes:
    print "%s :: %s" % (note.guid, note.title)
