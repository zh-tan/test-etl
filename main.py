import os
import tempfile

from google.cloud import storage, vision

storage_client = storage.Client()

blur_bucket_name = os.getenv("tut1-zh")
blur_bucket = storage_client.bucket(blur_bucket_name)
new_blob = blur_bucket.blob("./")
new_blob.upload_from_filename("./test.json")